package com.nlu.fit.giasunlu.model;


import java.util.Date;


public class TutorPortfolio extends BaseEntity {

    private int id;
    private Long userId;
    private Date teachingSince;
    private String profileImage;
    private String briefDesc;
    private String teachingExperience;

    public TutorPortfolio() {
    }

    public TutorPortfolio(int id, Long userId, Date teachingSince, String profileImage, String briefDesc, String teachingExperience) {
        this.id = id;
        this.userId = userId;
        this.teachingSince = teachingSince;
        this.profileImage = profileImage;
        this.briefDesc = briefDesc;
        this.teachingExperience = teachingExperience;
    }

    public String getTeachingExperience() {
        return teachingExperience;
    }

    public void setTeachingExperience(String teachingExperience) {
        this.teachingExperience = teachingExperience;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Date getTeachingSince() {
        return teachingSince;
    }

    public void setTeachingSince(Date teachingSince) {
        this.teachingSince = teachingSince;
    }

    public String getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(String profileImage) {
        this.profileImage = profileImage;
    }

    public String getBriefDesc() {
        return briefDesc;
    }

    public void setBriefDesc(String briefDesc) {
        this.briefDesc = briefDesc;
    }
}
