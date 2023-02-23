package com.nlu.fit.giasunlu.model;

import java.util.Objects;

public class Class extends BaseEntity {

    private int id;
    private Long userCreate;
    private String className;

    private int idSubject;
    private int level;
    private int cost;
    private String address;
    private String briefDesc;
    private int maxStudent;
    private int status;

    private Subject subject;

    public Class() {
    }

    public Class(int id, Long userCreate, String className, int subjectId, int level, int cost, String address, String briefDesc, int maxStudent, int status) {
        this.id = id;
        this.userCreate = userCreate;
        this.className = className;
        this.idSubject = subjectId;
        this.level = level;
        this.cost = cost;
        this.address = address;
        this.briefDesc = briefDesc;
        this.maxStudent = maxStudent;
        this.status = status;
    }

    public Class(int id, Long userCreate, String className, int idSubject, int level, int cost, String address, String briefDesc, int maxStudent, int status, Subject subject) {
        this.id = id;
        this.userCreate = userCreate;
        this.className = className;
        this.idSubject = idSubject;
        this.level = level;
        this.cost = cost;
        this.address = address;
        this.briefDesc = briefDesc;
        this.maxStudent = maxStudent;
        this.status = status;
        this.subject = subject;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Long getUserCreate() {
        return userCreate;
    }

    public void setUserCreate(Long userCreate) {
        this.userCreate = userCreate;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public int getIdSubject() {
        return idSubject;
    }

    public void setIdSubject(int idSubject) {
        this.idSubject = idSubject;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBriefDesc() {
        return briefDesc;
    }

    public void setBriefDesc(String briefDesc) {
        this.briefDesc = briefDesc;
    }

    public int getMaxStudent() {
        return maxStudent;
    }

    public void setMaxStudent(int maxStudent) {
        this.maxStudent = maxStudent;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    @Override
    public String toString() {
        return "Class{" +
                "id=" + id +
                ", userCreate=" + userCreate +
                ", className='" + className + '\'' +
                ", idSubject=" + idSubject +
                ", level=" + level +
                ", cost=" + cost +
                ", address='" + address + '\'' +
                ", briefDesc='" + briefDesc + '\'' +
                ", maxStudent=" + maxStudent +
                ", status='" + status + '\'' +
                ", subject=" + subject +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Class aClass = (Class) o;
        return getId() == aClass.getId() && getIdSubject() == aClass.getIdSubject() && getLevel() == aClass.getLevel() && getCost() == aClass.getCost() && getMaxStudent() == aClass.getMaxStudent() && Objects.equals(getUserCreate(), aClass.getUserCreate()) && Objects.equals(getClassName(), aClass.getClassName()) && Objects.equals(getAddress(), aClass.getAddress()) && Objects.equals(getBriefDesc(), aClass.getBriefDesc()) && Objects.equals(getStatus(), aClass.getStatus()) && Objects.equals(getSubject(), aClass.getSubject());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), getUserCreate(), getClassName(), getIdSubject(), getLevel(), getCost(), getAddress(), getBriefDesc(), getMaxStudent(), getStatus(), getSubject());
    }
}

