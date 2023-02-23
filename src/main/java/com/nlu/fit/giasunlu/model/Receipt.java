package com.nlu.fit.giasunlu.model;


import java.util.Date;

public class Receipt extends BaseEntity {


    private int id;

    private Long classId;
    private Long studentId;
    private Date startAt;
    private Date endAt;

    private Long teacher;
    private Long totalPrice;
    private String desc;
    private int status;


    public Receipt() {
    }

    public Receipt(int id, Long classId, Long studentId, Date startAt, Date endAt, Long teacher, Long totalPrice, String desc, int status) {
        this.id = id;
        this.classId = classId;
        this.studentId = studentId;
        this.startAt = startAt;
        this.endAt = endAt;
        this.teacher = teacher;
        this.totalPrice = totalPrice;
        this.desc = desc;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Long getClassId() {
        return classId;
    }

    public void setClassId(Long classId) {
        this.classId = classId;
    }

    public Long getStudentId() {
        return studentId;
    }

    public void setStudentId(Long studentId) {
        this.studentId = studentId;
    }

    public Date getStartAt() {
        return startAt;
    }

    public void setStartAt(Date startAt) {
        this.startAt = startAt;
    }

    public Date getEndAt() {
        return endAt;
    }

    public void setEndAt(Date endAt) {
        this.endAt = endAt;
    }

    public Long getTeacher() {
        return teacher;
    }

    public void setTeacher(Long teacher) {
        this.teacher = teacher;
    }

    public Long getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Long totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}

