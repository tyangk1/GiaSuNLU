package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.Blog;
import org.jdbi.v3.sqlobject.SingleValue;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@SuppressWarnings("SqlInsertValues")
@RegisterBeanMapper(Blog.class)
public interface BlogDao {

    @SqlQuery("select * from blog where id = :id")
    @SingleValue
    Blog getBlogById(@Bind("id") int id);

    @SqlQuery("select * from blog where user_create = :id")
    List<Blog> getBlogByUserId(@Bind("id") int id);

    @SqlUpdate("insert into blog ( title, content, thumbnail, user_create, create_at,update_at) values ( :title, :content, :thumbnail, :userCreate, now(), now())")
    void insertBlog(@BindBean Blog blog);

    @SqlUpdate("update blog set title = :title, content = :content, thumbnail = :thumbnail, user_create = :userCreate, update_at=now() where id = :id")
    void updateBlog(@BindBean Blog blog);

    @SqlUpdate("delete from blog where id = :id")
    void deleteBlog(@Bind("id") int id);


}
