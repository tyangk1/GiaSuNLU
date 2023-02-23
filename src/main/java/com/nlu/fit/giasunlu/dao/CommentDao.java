package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.Comment;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Comment.class)
public interface CommentDao {

    @SqlQuery("select * from comment where id = :id")
    Comment getCommentById(@Bind("id") int id);

    @SqlQuery("select * from comment where user_id = :id")
    List<Comment> getCommentByUserId(@Bind("id") int id);

    @SqlQuery("select * from comment where post_id = :id order by update_at desc")
    List<Comment> getCommentByPostId(@Bind("id") int id);

    @SqlQuery("select * from comment where reply_id = :id order by update_at desc")
    List<Comment> getCommentByParentId(@Bind("id") int id);

    @SqlQuery("select * from comment")
    List<Comment> getComment();

    @SqlUpdate("insert into comment ( reply_id, post_id, user_id, content, create_at, update_at) values ( :replyId, :postId, :userId, :content, :createAt, :updateAt)")
    void insertComment(@BindBean Comment comment);

    @SqlUpdate("update comment set reply_id = :replyId, post_id = :postId, user_id = :userId, content = :content, create_at = :createAt, update_at = :updateAt where id = :id")
    void updateComment(@BindBean Comment comment);

    @SqlUpdate("delete from comment where id = :id")
    void deleteComment(@Bind("id") int id);

}
