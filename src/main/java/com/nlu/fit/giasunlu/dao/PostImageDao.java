package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.PostImage;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(PostImage.class)
public interface PostImageDao {

    @SqlQuery("select * from post_image where post_id = :id and link = :link")
    PostImage getPostImageById(@Bind("id") int id, @Bind("link") String link);

    @SqlQuery("select * from post_image where post_id = :id")
    List<PostImage> getPostImageById(@Bind("id") int id);

    @SqlQuery("select * from post_image")
    List<PostImage> getPostImages();

    @SqlUpdate("insert into post_image (post_id, link) values (:postId, :link)")
    void insertPostImage(@BindBean PostImage postImage);

    @SqlQuery("update post_image set link = :link where post_id = :postId")
    void updatePostImage(@BindBean PostImage postImage);

    @SqlUpdate("delete from post_image where post_id = :postId")
    void deletePostImageByPostId(@Bind("postId") int postId);


}
