package com.nlu.fit.giasunlu.service.serviceImpl;

import com.nlu.fit.giasunlu.dao.CommentDao;
import com.nlu.fit.giasunlu.dao.NewUserDao;
import com.nlu.fit.giasunlu.dao.ReplyCommentDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.Comment;
import com.nlu.fit.giasunlu.model.ReplyComment;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.CommentService;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class CommentServiceImpl implements CommentService {
    Jdbi jdbi = JDBIConnection.get();

    @Override
    public List<Comment> getCommetByPostId(int postId) {
        List<Comment> comments = jdbi.withExtension(CommentDao.class, dao -> dao.getCommentByPostId(postId));
        return comments.stream().map(this::mapOther).toList();
    }

    @Override
    public void insertComment(Comment comment) {
        jdbi.useExtension(CommentDao.class, dao -> dao.insertComment(comment));
    }

    @Override
    public void deleteComment(int id) {
        jdbi.useExtension(CommentDao.class, dao -> dao.deleteComment(id));
    }

    @Override
    public void updateComment(Comment comment) {
        jdbi.useExtension(CommentDao.class, dao -> dao.updateComment(comment));
    }

    @Override
    public void insertReplyComment(ReplyComment replyComment) {
        jdbi.useExtension(ReplyCommentDao.class, dao -> dao.insertReplyComment(replyComment));
    }

    @Override
    public void updateReplyComment(ReplyComment replyComment) {
        jdbi.useExtension(ReplyCommentDao.class, dao -> dao.updateReplyComment(replyComment));
    }

    @Override
    public void deleteReplyComment(int id) {

    }


    private Comment mapOther(Comment comment) {
        User user = jdbi.withExtension(NewUserDao.class, dao -> dao.getUser(Math.toIntExact(comment.getUserId())));
        comment.setUser(user);
        List<ReplyComment> replyComments = jdbi.withExtension(ReplyCommentDao.class, dao -> dao.getReplyCommentByCommentId(comment.getId()));
        replyComments = replyComments.stream().map(this::mapOtherReplyCommet).toList();
        comment.setReplyComments(replyComments);
        return comment;
    }

    private ReplyComment mapOtherReplyCommet(ReplyComment replyComment) {
        User user = jdbi.withExtension(NewUserDao.class, dao -> dao.getUser(Math.toIntExact(replyComment.getUserId())));
        replyComment.setUser(user);
        return replyComment;
    }

}
