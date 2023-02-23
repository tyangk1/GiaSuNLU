package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.JoinClass;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(JoinClass.class)
public interface JoinClassDao {
    @SqlQuery("select * from join_class where id_class = :id")
    JoinClass getJoinClassById(@Bind("id") int id);

    @SqlQuery("select * from join_class where user_id = :id")
    List<JoinClass> getJoinClassByUserId(@Bind("id") int id);

    @SqlQuery("select * from join_class")
    List<JoinClass> getJoinClass();

    @SqlUpdate("insert into join_class (user_id,id_class, role,create_at, update_at) values (:userId, :idClass,:role, :createAt, :updateAt)")
    void insertJoinClass(@BindBean JoinClass joinClass);

    @SqlUpdate("delete from join_class where user_id = :userId and id_class = :idClass")
    void deleteJoinClass(@BindBean JoinClass joinClass);

    @SqlUpdate("delete from join_class where user_id = :userId")
    void deleteJoinClassByUserId(@Bind("id") int userId);

    @SqlUpdate("delete from join_class where id_class = :idClass")
    void deleteJoinClassByClassId(@Bind("classId") int classId);
}
