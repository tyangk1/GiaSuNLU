package com.nlu.fit.giasunlu.model;

import java.util.Date;

public class Certificates extends BaseEntity{

    private int id;
    private int userId;

    private String schoolName;
    private String major;
    private String image;

    private Date startDate;
    private Date endDate;

    public Certificates() {
    }

    public Certificates(int userId, String schoolName, String major, String image, Date startDate, Date endDate) {
        this.userId = userId;
        this.schoolName = schoolName;
        this.major = major;
        this.image = image;
        this.startDate = startDate;
        this.endDate = endDate;
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

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }
}
