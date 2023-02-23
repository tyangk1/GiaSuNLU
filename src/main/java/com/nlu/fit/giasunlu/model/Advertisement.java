package com.nlu.fit.giasunlu.model;

import java.util.Date;

public class Advertisement extends BaseEntity {

    private int id;
    private String title;
    private Long price;

    private String thumbnail;

    private String content;

    private Long userId;

    private int status;

    private Date startAt;

    private Date endAt;

    private String briefDesc;

    public Advertisement() {
    }

    public Advertisement(int id, String title, Long price, String thumbnail, String content, Long userId, int status, Date startAt, Date endAt, String briefDesc) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.thumbnail = thumbnail;
        this.content = content;
        this.userId = userId;
        this.status = status;
        this.startAt = startAt;
        this.endAt = endAt;
        this.briefDesc = briefDesc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
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

    public String getBriefDesc() {
        return briefDesc;
    }

    public void setBriefDesc(String briefDesc) {
        this.briefDesc = briefDesc;
    }
}
