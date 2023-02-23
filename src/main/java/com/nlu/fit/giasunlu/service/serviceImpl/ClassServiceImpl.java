package com.nlu.fit.giasunlu.service.serviceImpl;

import com.nlu.fit.giasunlu.dao.ClassDao;
import com.nlu.fit.giasunlu.dao.JoinClassDao;
import com.nlu.fit.giasunlu.dao.ReportDao;
import com.nlu.fit.giasunlu.dao.SubjectDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.Class;
import com.nlu.fit.giasunlu.model.JoinClass;
import com.nlu.fit.giasunlu.model.Report;
import com.nlu.fit.giasunlu.model.Subject;
import com.nlu.fit.giasunlu.service.ClassService;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ClassServiceImpl implements ClassService {
    Jdbi jdbi = JDBIConnection.get();

    @Override
    public Class getClassById(int id) {
        Class theClass = jdbi.withExtension(ClassDao.class, dao -> dao.getClassById(id));
        theClass.setSubject(jdbi.withExtension(SubjectDao.class, dao -> dao.getSubjectNameById(theClass.getIdSubject())));
        return theClass;
    }

    @Override
    public List<Class> getClasses() {
        List<Class> classes = jdbi.withExtension(ClassDao.class, ClassDao::getClasses);
        for (Class aClass : classes) {
            aClass.setSubject(jdbi.withExtension(SubjectDao.class, dao -> dao.getSubjectNameById(aClass.getIdSubject())));
        }
        return classes;
    }

    @Override
    public List<Class> getClassesByStatus(int status) {
        return jdbi.withExtension(ClassDao.class, dao -> dao.getClassesByStatus(status));
    }

    @Override
    public List<Class> getClassesByStatusWithQuery(String keyWord, int cost, int idSubject, int level) {
        return jdbi.withExtension(ClassDao.class, dao -> dao.getClassesByStatusWithQuery(keyWord, cost, idSubject, level));
    }

    @Override
    public void insertClass(Class theClass) {
        jdbi.useExtension(ClassDao.class, dao -> dao.insertClass(theClass));
    }

    @Override
    public void updateClass(Class theClass) {
        jdbi.useExtension(ClassDao.class, dao -> dao.updateClass(theClass));
    }

    @Override
    public void deleteClass(int id) {
        jdbi.useExtension(ClassDao.class, dao -> dao.deleteClass(id));
    }

    @Override
    public List<Subject> getAllSubject() {
        return jdbi.withExtension(SubjectDao.class, SubjectDao::getAllSubject);
    }

    @Override
    public void insertJoinClass(JoinClass joinClass) {
        jdbi.useExtension(JoinClassDao.class, dao -> dao.insertJoinClass(joinClass));
    }

    @Override
    public void insertReport(Report report) {
        jdbi.useExtension(ReportDao.class, dao -> dao.insert(report));
    }

    public void insertReportClass(Report report) {
        jdbi.useExtension(ReportDao.class, dao -> dao.insert(report));
    }

}
