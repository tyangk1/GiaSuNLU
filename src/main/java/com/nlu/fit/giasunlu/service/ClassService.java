package com.nlu.fit.giasunlu.service;

import com.nlu.fit.giasunlu.model.Class;
import com.nlu.fit.giasunlu.model.JoinClass;
import com.nlu.fit.giasunlu.model.Report;
import com.nlu.fit.giasunlu.model.Subject;

import java.util.List;

public interface ClassService {
    Class getClassById(int id);

    List<Class> getClasses();

    List<Class> getClassesByStatus(int status);

    List<Class> getClassesByStatusWithQuery(String keyWord, int cost, int idSubject, int level);

    void insertClass(Class theClass);

    void updateClass(Class theClass);

    void deleteClass(int id);

    List<Subject> getAllSubject();

    void insertJoinClass(JoinClass joinClass);

    void insertReport(Report report);
}
