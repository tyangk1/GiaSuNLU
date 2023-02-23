package com.nlu.fit.giasunlu.dao.daoImpl;

import com.nlu.fit.giasunlu.dao.UserDao;
import com.nlu.fit.giasunlu.jdbc.JDBCConnection;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.utils.HibernateUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {

    public void saveUser(User user) {
//        Transaction transaction = null;
//        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
//            // start a transaction
//            transaction = session.beginTransaction();
//            // save the student object
//            session.save(user);
//            // commit transaction
//            transaction.commit();
//        } catch (Exception e) {
//            if (transaction != null) {
//                transaction.rollback();
//            }
//            e.printStackTrace();
//        }
        int roleId = 0;
        String sql = "INSERT INTO User(email, firstname, lastname,date_of_birth, password,avatar,address,phone_number,role_id, create_at,update_at) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        Connection con = JDBCConnection.getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getFirstName());
            ps.setString(3, user.getLastName());
            ps.setDate(4, (Date) user.getDateOfBirth());
            ps.setString(5, user.getPassword());
            ps.setString(6, user.getAvatar());
            ps.setString(7, "");
            ps.setString(8, "");
            try {
                if (user.getRoleId() == 1) {
                    roleId = 1;
                } else {
                    roleId = 2;
                }

            } catch (Exception e) {
                roleId = 2;
            }
            ps.setInt(9, roleId);
//            ps.setDate(10,  user.getCreateAt());
//            ps.setDate(11,  user.getUpdateAt());
            ps.executeUpdate();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    /**
     * Update User
     * @param user
     */
    public void updateUser(User user) {
        Transaction transaction = null;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.update(user);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    /**
     * Delete User
     * @param id
     */
    public void deleteUser(int id) {

        Transaction transaction = null;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();

            // Delete a user object
            User user = session.get(User.class, id);
            if (user != null) {
                session.delete(user);
                System.out.println("user is deleted");
            }

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    /**
     * Get User By ID
     * @param id
     * @return
     */
    public User getUser(int id) {

        Transaction transaction = null;
        User user = null;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            user = session.get(User.class, id);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return user;
    }

    /**
     * Get all Users
     * @return
     */
    @SuppressWarnings("unchecked")
    public List< User > getAllUser() {

        Transaction transaction = null;
        List < User > listOfUser = null;
        try (Session session = HibernateUtils.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object

            listOfUser = session.createQuery("from User").getResultList();

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfUser;
    }


    @Override
    public User get(String email) {
        String sql = "SELECT * FROM User WHERE email = ? ";
        Connection con = JDBCConnection.getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setEmail(rs.getString("email"));
                user.setCoin(rs.getInt("coin"));
                user.setAddress(rs.getString("address"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setPassword(rs.getString("password"));
                user.setAvatar(rs.getString("avatar"));
                user.setAddress(rs.getString("address"));
                user.setPhoneNumber(rs.getString("phone_number"));
                user.setGender(rs.getString("gender"));
                user.setRoleId(Integer.parseInt(rs.getString("role_id")));

                return user;

            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }



    @Override
    public List<User> search(String keyword) {
        List<User> userList = new ArrayList<User>();
        String sql = "SELECT * FROM User WHERE name LIKE ? ";
        Connection conn = JDBCConnection.getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + keyword + "%");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setEmail(rs.getString("email"));
                user.setCoin(rs.getInt("coin"));
                user.setAddress(rs.getString("address"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setPassword(rs.getString("password"));
                user.setAvatar(rs.getString("avatar"));
                user.setAddress(rs.getString("address"));
                user.setPhoneNumber(rs.getString("phone_number"));
                user.setGender(rs.getString("gender"));
                user.setRoleId(Integer.parseInt(rs.getString("role_id")));

                userList.add(user);
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return userList;
    }

    public boolean checkExistEmail(String email) {
        boolean duplicate = false;
        Connection conn = JDBCConnection.getJDBCConnection();
        try {
            String query = "select * from user where email = ?";

            PreparedStatement psmt = conn.prepareStatement(query);

            psmt.setString(1, email);

            ResultSet resultSet = psmt.executeQuery();

            if (resultSet.next()) {
                duplicate = true;
            }
            psmt.close();
            conn.close();
        } catch (SQLException ex) {
        }
        return duplicate;
    }

    public boolean checkExistUsername(String username) {
        boolean duplicate = false;
        Connection conn = JDBCConnection.getJDBCConnection();
        try {
            String query = "select * from User where username = ?";

            PreparedStatement psmt = conn.prepareStatement(query);

            psmt.setString(1, username);

            ResultSet resultSet = psmt.executeQuery();

            if (resultSet.next()) {
                duplicate = true;
            }
            psmt.close();
            conn.close();
        } catch (SQLException ex) {
        }
        return duplicate;
    }

    @Override
    public String getPassword(String email) {
        String sql = "SELECT user.password FROM User WHERE email = ? ";
        Connection conn = JDBCConnection.getJDBCConnection();

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User();
                user.setPassword(rs.getString("password"));
                return user.getPassword();
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public void changePassword(int id, String password) {
        String sql = "UPDATE User SET password = ? WHERE id = ? ";
        Connection con = JDBCConnection.getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, password);
            ps.setInt(2, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    @Override
    public User findByEmail(String email) {
        String sql = "SELECT * FROM User WHERE email = ? ";
        Connection con = JDBCConnection.getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setEmail(rs.getString("email"));
                user.setCoin(rs.getInt("coin"));
                user.setAddress(rs.getString("address"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setPassword(rs.getString("password"));
                user.setAvatar(rs.getString("avatar"));
                user.setAddress(rs.getString("address"));
                user.setPhoneNumber(rs.getString("phone_number"));
                user.setGender(rs.getString("gender"));
                user.setRoleId(Integer.parseInt(rs.getString("role_id")));

                return user;

            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

}
