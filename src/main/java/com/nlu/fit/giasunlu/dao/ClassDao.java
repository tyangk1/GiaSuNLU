package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.Class;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Class.class)
public interface ClassDao {
    @SqlQuery("select * from class where id = :id")
    Class getClassById(@Bind("id") int id);

    @SqlQuery("select * from class")
    List<Class> getAllClass();

    @SqlUpdate("insert into class (user_create, class_name, id_subject, level, cost, address, brief_desc, max_student, status, create_at, update_at) values (:userCreate, :className, :idSubject, :level, :cost, :address, :briefDesc, :maxStudent, :status, :createAt, :updateAt)")
    void insertClass(@BindBean Class theClass);

    @SqlUpdate("update class set user_create = :userCreate, class_name = :className, id_subject = :subjectId, level = :level, cost = :cost, address = :address, brief_desc = :briefDesc, max_student = :maxStudent, status = :status, create_at = :createAt, update_at = :updateAt where id = :id")
    void updateClass(@BindBean Class theClass);

    @SqlUpdate("delete from class where id = :id")
    void deleteClass(@Bind("id") int id);

    @SqlQuery("select * from class")
    List<Class> getClasses();

    @SqlQuery("select * from class where status = :status")
    List<Class> getClassesByStatus(int status);

    @SqlQuery("select * from class where status = :status and class_name like concat('%', :keyWord, '%') and cost <= :cost and id_subject = :idSubject and level = :level")
    List<Class> getClassesByStatusWithQuery(String keyWord, int cost, int idSubject, int level);
}
