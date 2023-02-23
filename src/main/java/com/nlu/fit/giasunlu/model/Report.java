package com.nlu.fit.giasunlu.model;

public class Report {
    int id;
    int userId;
    int postId;
    int status;
    String content;

    User user;
    Post post;

    public Report() {
    }

    public Report(int id, int userId, int postId, int status, String content) {
        this.id = id;
        this.userId = userId;
        this.postId = postId;
        this.status = status;
        this.content = content;
    }

    public Report(int id, int userId, int postId, int status, String content, User user, Post post) {
        this.id = id;
        this.userId = userId;
        this.postId = postId;
        this.status = status;
        this.content = content;
        this.user = user;
        this.post = post;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
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

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    @Override
    public String toString() {
        return "Report{" + "id=" + id + ", userId=" + userId + ", postId=" + postId + ", status=" + status + ", content='" + content + '\'' + ", user=" + user + ", post=" + post + '}';
    }
}
