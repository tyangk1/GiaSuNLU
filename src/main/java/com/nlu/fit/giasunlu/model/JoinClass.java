package com.nlu.fit.giasunlu.model;


public class JoinClass extends BaseEntity {
    private int id;
    private int idClass;
    private int userId;
    private int role;

    private User user;

    public JoinClass() {
    }

    public JoinClass(int id, int classId, int userId, int role) {
        this.id = id;
        this.idClass = classId;
        this.userId = userId;
        this.role = role;
    }

    public JoinClass(int id, int classId, int userId, int role, User user) {
        this.id = id;
        this.idClass = classId;
        this.userId = userId;
        this.role = role;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdClass() {
        return idClass;
    }

    public void setIdClass(int idClass) {
        this.idClass = idClass;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "JoinClass{" +
                "id=" + id +
                ", idClass=" + idClass +
                ", userId=" + userId +
                ", role=" + role +
                ", user=" + user +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}

