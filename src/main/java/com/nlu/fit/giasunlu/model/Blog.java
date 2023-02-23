package com.nlu.fit.giasunlu.model;

public class Blog extends BaseEntity {

    private int id;
    private int userCreate;

    private String thumbnail;
    private String title;
    private String content;

    public Blog() {
    }

    public Blog(int id, int userCreate, String thumbnail, String title, String content) {
        this.id = id;
        this.userCreate = userCreate;
        this.thumbnail = thumbnail;
        this.title = title;
        this.content = content;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserCreate() {
        return userCreate;
    }

    public void setUserCreate(int userCreate) {
        this.userCreate = userCreate;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id=" + id +
                ", userCreate=" + userCreate +
                ", thumbnail='" + thumbnail + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}

