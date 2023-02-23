package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.Subject;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Subject.class)
public interface SubjectDao {
    @SqlQuery("select * from subject where id = :id")
    Subject getSubjectNameById(@Bind("id") int id);

    @SqlQuery("select * from subject")
    List<Subject> getAllSubject();

    @SqlUpdate("insert into subject (name) values (:name)")
    void insertSubject(@BindBean Subject subject);

    @SqlUpdate("update subject set name = :name where id = :id")
    void updateSubject(@BindBean Subject subject);

    @SqlUpdate("delete from subject where id = :id")
    void deleteSubject(@BindBean int id);
}
