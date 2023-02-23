package com.nlu.fit.giasunlu;


import com.github.javafaker.Faker;
import com.nlu.fit.giasunlu.dao.*;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.Class;
import com.nlu.fit.giasunlu.model.*;
import com.nlu.fit.giasunlu.utils.SecurityUtils;
import org.jdbi.v3.core.Jdbi;

import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public class FakeData {


    public static void main(String[] args) {

        new FakeData().turnover();
    }

    void turnover() {
        Jdbi jdbi = JDBIConnection.get();
        Faker faker = new Faker(new Locale("vi"));

        List<User> users = jdbi.withExtension(NewUserDao.class, dao -> dao.getAllUser());

        jdbi.useExtension(TurnoverDao.class, dao -> {
            for (int i = 0; i < 100; i++) {
                Turnover turnover = new Turnover();
                turnover.setUserId(users.get(faker.number().numberBetween(0, users.size())).getId());
                turnover.setCost((long) faker.number().randomDouble(10000, 10000, 100000));
                turnover.setCreateAt(faker.date().past(1000, TimeUnit.DAYS));
                turnover.setUpdateAt(faker.date().past(1000, TimeUnit.DAYS));
                dao.insertTurnover(turnover);
            }
        });
    }

    void report() {
        Jdbi jdbi = JDBIConnection.get();
        Faker faker = new Faker(new Locale("vi"));
        List<User> users = jdbi.withExtension(NewUserDao.class, NewUserDao::getAllUser);
        List<Class> classes = jdbi.withExtension(ClassDao.class, ClassDao::getAllClass);

        for (int i = 0; i < faker.number().numberBetween(0, 50); i++) {
            jdbi.useExtension(ReportDao.class, dao -> {
                Report report = new Report();
                report.setPostId(classes.get(faker.number().numberBetween(0, classes.size() - 1)).getId());
                report.setUserId(users.get(faker.number().numberBetween(0, users.size() - 1)).getId());
                report.setContent(faker.lorem().sentence());
                report.setStatus(faker.number().numberBetween(0, 2));
                dao.insert(report);
            });
        }


    }

    void joinClass() {
        Jdbi jdbi = JDBIConnection.get();
        Faker faker = new Faker(new Locale("vi"));

        List<Class> classes = jdbi.withExtension(ClassDao.class, dao -> dao.getAllClass());

        List<User> teachers = jdbi.withExtension(NewUserDao.class, dao -> dao.getAllTeacher());
        List<User> students = jdbi.withExtension(NewUserDao.class, dao -> dao.getAllCustomer());

        for (Class class1 : classes) {
            if (class1.getStatus() == 1 || class1.getStatus() == 2) {
                JoinClass joinClass = new JoinClass();
                joinClass.setIdClass(class1.getId());
                joinClass.setUserId(teachers.get(faker.number().numberBetween(0, teachers.size() - 1)).getId());
                joinClass.setCreateAt(new Date());
                joinClass.setUpdateAt(new Date());
                joinClass.setRole(0);

                jdbi.useExtension(JoinClassDao.class, dao -> dao.insertJoinClass(joinClass));

                joinClass.setUserId(students.get(faker.number().numberBetween(0, students.size() - 1)).getId());
                joinClass.setRole(1);
                jdbi.useExtension(JoinClassDao.class, dao -> dao.insertJoinClass(joinClass));

            }
        }

    }

    void coinHistory() {
        Jdbi jdbi = JDBIConnection.get();
        Faker faker = new Faker(new Locale("vi"));
        List<User> users = jdbi.withExtension(NewUserDao.class, NewUserDao::getAllUser);
        users = users.stream().filter(user -> user.getRoleId() != 0).toList();
        List<User> finalUsers = users;
        jdbi.useExtension(CoinHistoryDao.class, dao -> {
            for (int i = 0; i < 100; i++) {
                CoinHistory coinHistory = new CoinHistory();
                coinHistory.setUserId(finalUsers.get(faker.number().numberBetween(0, finalUsers.size() - 1)).getId());
                coinHistory.setCoin(new Faker().number().numberBetween(1, 100));
                coinHistory.setContent("Nạp " + coinHistory.getCoin() + " xu vào tài khoản");
                Date date = faker.date().past(100, TimeUnit.DAYS);
                coinHistory.setDate(date);
                coinHistory.setCreateAt(date);
                coinHistory.setUpdateAt(date);
                dao.insert(coinHistory);
            }
        });
    }

    void replyComment() {
        Jdbi jdbi = JDBIConnection.get();
        Faker faker = new Faker(new Locale("vi"));

        List<User> users = jdbi.withExtension(NewUserDao.class, dao -> dao.getAllUser());
        List<Comment> comments = jdbi.withExtension(CommentDao.class, dao -> dao.getComment());

        for (Comment comment : comments) {
            int count = faker.number().numberBetween(0, 3);
            for (int j = 0; j < count; j++) {
                ReplyComment replyComment = new ReplyComment();
                replyComment.setCommentId(comment.getId());
                replyComment.setUserId(users.get(faker.number().numberBetween(0, users.size() - 1)).getId());
                replyComment.setContent(faker.lorem().sentence());
                jdbi.useExtension(ReplyCommentDao.class, dao -> dao.insertReplyComment(replyComment));
            }
        }
    }

    void comment() {
        Jdbi jdbi = JDBIConnection.get();
        Faker faker = new Faker(new Locale("vi"));

        List<User> users = jdbi.withExtension(NewUserDao.class, dao -> dao.getAllUser());
        List<Class> classes = jdbi.withExtension(ClassDao.class, dao -> dao.getAllClass());

        for (int i = 0; i < 100; i++) {
            Comment comment = new Comment();
            User user = users.get(faker.number().numberBetween(0, users.size()));
            Class theClass = classes.get(faker.number().numberBetween(0, classes.size()));

            System.out.println(user.getId());
            comment.setUserId((long) user.getId());
            System.out.println(theClass.getId());
            comment.setPostId((long) theClass.getId());
            comment.setContent(faker.lorem().sentence());
            comment.setCreateAt(faker.date().past(100, java.util.concurrent.TimeUnit.DAYS));
            comment.setUpdateAt(faker.date().past(100, java.util.concurrent.TimeUnit.DAYS, comment.getCreateAt()));

            jdbi.useExtension(CommentDao.class, dao -> dao.insertComment(comment));
//            System.out.println(comment);
        }


    }

    void theClass() {
        Jdbi jdbi = JDBIConnection.get();

        Faker fakeData = new Faker(new Locale("vi"));

        List<User> users = jdbi.withExtension(NewUserDao.class, dao -> dao.getAllUser());
        users = users.stream().filter(user -> user.getRoleId() != 0).toList();
        List<Subject> subjects = jdbi.withExtension(SubjectDao.class, dao -> dao.getAllSubject());

        for (int i = 0; i < 50; i++) {
            Class theClass = new Class();
            theClass.setUserCreate((long) users.get(fakeData.number().numberBetween(0, users.size() - 1)).getId());
            theClass.setIdSubject(subjects.get(fakeData.number().numberBetween(0, subjects.size())).getId());
            theClass.setClassName(fakeData.educator().campus());
            theClass.setLevel(fakeData.number().numberBetween(0, 5));
            theClass.setCost(fakeData.number().numberBetween(100000, 500000));
            theClass.setAddress(fakeData.address().fullAddress());
            theClass.setBriefDesc(fakeData.lorem().paragraph());
            theClass.setMaxStudent(fakeData.number().numberBetween(1, 10));
            theClass.setStatus(fakeData.number().numberBetween(0, 3));
            theClass.setCreateAt(fakeData.date().past(100, java.util.concurrent.TimeUnit.DAYS));
            theClass.setUpdateAt(fakeData.date().past(100, java.util.concurrent.TimeUnit.DAYS));

            jdbi.useExtension(ClassDao.class, dao -> dao.insertClass(theClass));
        }
    }

    void user() {
        Jdbi jdbi = JDBIConnection.get();

        Faker fakeData = new Faker(new Locale("vi"));
        String linkMan = "https://randomuser.me/api/portraits/men/:ran.jpg";
        String linkWomen = "https://randomuser.me/api/portraits/women/:ran.jpg";
        for (int i = 0; i < 50; i++) {
            User user = new User();
            String fullName = fakeData.name().nameWithMiddle();
            user.setFirstName(fullName.split(" ")[1] + " " + fullName.split(" ")[2]);
            user.setLastName(fullName.split(" ")[0]);
            user.setEmail(fakeData.internet().emailAddress());
            user.setPassword(SecurityUtils.encodePassword("123456"));
            user.setPhone(fakeData.phoneNumber().phoneNumber());
            user.setAddress(fakeData.address().fullAddress());
            int roleId = fakeData.number().numberBetween(1, 3);
            user.setRoleId(roleId);
            user.setGender(fakeData.number().numberBetween(0, 2) == 0 ? "male" : "female");

            user.setCoin(0);
            if (user.getGender().equals("female")) {
                user.setAvatar(linkWomen.replace(":ran", String.valueOf(fakeData.number().numberBetween(0, 99))));
            } else {
                user.setAvatar(linkMan.replace(":ran", String.valueOf(fakeData.number().numberBetween(0, 99))));
            }

            user.setStatus(1);

            user.setDateOfBirth(fakeData.date().birthday());

            user.setCreateAt(fakeData.date().past(100, java.util.concurrent.TimeUnit.DAYS));
            user.setUpdateAt(fakeData.date().past(100, java.util.concurrent.TimeUnit.DAYS));
            user.setPhoneNumber(fakeData.phoneNumber().phoneNumber());

            jdbi.useExtension(NewUserDao.class, dao -> {
                dao.insertUser(user);
            });
        }

    }

    void subject() {
        Subject subject1 = new Subject();
        subject1.setName("Toán");

        Subject subject2 = new Subject();
        subject2.setName("Văn");

        Subject subject3 = new Subject();
        subject3.setName("Tiếng Anh");

        Subject subject4 = new Subject();
        subject4.setName("Sinh Học");

        Subject subject5 = new Subject();
        subject5.setName("Vật Lý");

        Subject subject6 = new Subject();
        subject6.setName("Hóa Học");

        Subject subject7 = new Subject();
        subject7.setName("Sử");

        Subject subject8 = new Subject();
        subject8.setName("Địa");

        Subject subject9 = new Subject();
        subject9.setName("GDCD");

        Subject subject10 = new Subject();
        subject10.setName("Tiếng Nhật");

        Subject subject11 = new Subject();
        subject11.setName("Tiếng Trung");

        Subject subject13 = new Subject();
        subject13.setName("Tiếng Pháp");

        Subject subject14 = new Subject();
        subject14.setName("Tiếng Đức");

        Subject subject15 = new Subject();
        subject15.setName("Công nghệ");

        Subject subject16 = new Subject();
        subject16.setName("Tin học");

        Subject subject17 = new Subject();
        subject17.setName("Ngoại ngữ");

        Subject subject19 = new Subject();
        subject19.setName("Tin học văn phòng");

        Subject subject18 = new Subject();
        subject18.setName("Môn khác");

        Subject[] subjects = {subject1, subject2, subject3, subject4, subject5, subject6, subject7, subject8, subject9, subject10, subject11, subject13, subject14, subject15, subject16, subject17, subject18, subject19};

        Jdbi jdbi = JDBIConnection.get();
        for (Subject subject : subjects) {
            jdbi.useExtension(SubjectDao.class, dao -> dao.insertSubject(subject));
        }

        jdbi.useExtension(SubjectDao.class, dao -> {
            List<Subject> subjectList = dao.getAllSubject();
            for (Subject subject : subjectList) {
                System.out.println(subject);
            }
        });

    }
}
