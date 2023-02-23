package com.nlu.fit.giasunlu.service;

import com.nlu.fit.giasunlu.model.Comment;
import com.nlu.fit.giasunlu.model.ReplyComment;

import java.util.List;

public interface CommentService {
    List<Comment> getCommetByPostId(int postId);

    void insertComment(Comment comment);

    void deleteComment(int id);

    void updateComment(Comment comment);

    void insertReplyComment(ReplyComment replyComment);

    void updateReplyComment(ReplyComment replyComment);

    void deleteReplyComment(int id);
}
