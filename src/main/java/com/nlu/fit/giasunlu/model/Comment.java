package com.nlu.fit.giasunlu.model;


import java.util.List;

public class Comment extends BaseEntity {

    private int id;

    private Long replyId;

    private Long postId;

    private Long userId;

    private String content;

    private User user;

    private List<ReplyComment> replyComments;

    public Comment() {
    }

    public Comment(int id, Long replyId, Long postId, Long userId, String content) {
        this.id = id;
        this.replyId = replyId;
        this.postId = postId;
        this.userId = userId;
        this.content = content;
    }

    public Comment(int id, Long replyId, Long postId, Long userId, String content, User user) {
        this.id = id;
        this.replyId = replyId;
        this.postId = postId;
        this.userId = userId;
        this.content = content;
        this.user = user;
    }

    public Comment(int id, Long replyId, Long postId, Long userId, String content, User user, List<ReplyComment> replyComments) {
        this.id = id;
        this.replyId = replyId;
        this.postId = postId;
        this.userId = userId;
        this.content = content;
        this.user = user;
        this.replyComments = replyComments;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Long getReplyId() {
        return replyId;
    }

    public void setReplyId(Long replyId) {
        this.replyId = replyId;
    }

    public Long getPostId() {
        return postId;
    }

    public void setPostId(Long postId) {
        this.postId = postId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
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

    public List<ReplyComment> getReplyComments() {
        return replyComments;
    }

    public void setReplyComments(List<ReplyComment> replyComments) {
        this.replyComments = replyComments;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", replyId=" + replyId +
                ", postId=" + postId +
                ", userId=" + userId +
                ", content='" + content + '\'' +
                ", user=" + user +
                ", replyComments=" + replyComments +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}

