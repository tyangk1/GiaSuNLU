package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.Role;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Role.class)
public interface RoleDao {
    @SqlQuery("select * from role where id = :id")
    Role getRoleById(@Bind("id") int id);

    @SqlQuery("select * from role")
    List<Role> getRoles();

    @SqlUpdate("insert into role ( name, create_at, update_at) values ( :name, :createAt, :updateAt)")
    void insertRole(@BindBean Role role);

    @SqlUpdate("update role set name = :name, create_at = :createAt, update_at = now() where id = :id")
    void updateRole(@BindBean Role role);

    @SqlUpdate("delete from role where id = :id")
    void deleteRole(@Bind("id") int id);
}
