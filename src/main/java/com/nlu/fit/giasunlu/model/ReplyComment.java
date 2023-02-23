package com.nlu.fit.giasunlu.model;

public class ReplyComment {
    private int id;
    private int commentId;
    private int userId;
    private String content;

    private User user;

    public ReplyComment() {
    }

    public ReplyComment(int id, int commentId, int userId, String content) {
        this.id = id;
        this.commentId = commentId;
        this.userId = userId;
        this.content = content;
    }

    public ReplyComment(int id, int commentId, int userId, String content, User user) {
        this.id = id;
        this.commentId = commentId;
        this.userId = userId;
        this.content = content;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "ReplyComment{" +
                "id=" + id +
                ", commentId=" + commentId +
                ", userId=" + userId +
                ", content='" + content + '\'' +
                ", user=" + user +
                '}';
    }
}
