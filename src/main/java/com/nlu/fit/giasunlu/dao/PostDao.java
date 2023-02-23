package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.Post;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Post.class)
public interface PostDao {

    @SqlQuery("select * from post where id = :id")
    Post getPostById(@Bind("id") int id);

    @SqlQuery("select * from post where user_post = :id")
    List<Post> getPostByUserId(@Bind("id") int id);

    @SqlQuery("select * from post where user_post = :id order by update_at desc")
    List<Post> getPostByUserIdDesc(@Bind("id") int id);

    @SqlUpdate("insert into post (user_post, status, content, image, price, subject, phone, address, grade, create_at, update_at) values ( :userPost, :status, :content, :image, :price, :subject, :phone, :address, :grade, :createAt, :updateAt)")
    void insertPost(@BindBean Post post);

    @SqlUpdate("update post set user_post = :userPost, status = :status, content = :content, image = :image, price = :price, subject = :subject, phone = :phone, address = :address, grade = :grade, create_at = :createAt, update_at = :updateAt where id = :id")
    void updatePost(@BindBean Post post);

    @SqlUpdate("delete from post where id = :id")
    void deletePost(@Bind("id") int id);
}
