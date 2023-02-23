package com.nlu.fit.giasunlu.model;


public class Post extends BaseEntity {
    private int id;


    private int userPost;

    private String status;
    private String content;
    private String image;
    private Long price;

    private String title;

    private String subject;
    private String grade;
    private String address;
    private String phone;

    public Post() {
    }

    public Post(int id, int userPost, String status, String content, String title, String image, String subject, String grade, Long price, String address, String phone) {
        this.id = id;
        this.userPost = userPost;
        this.status = status;
        this.content = content;
        this.title = title;
        this.image = image;
        this.subject = subject;
        this.grade = grade;
        this.price = price;
        this.address = address;
        this.phone = phone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserPost() {
        return userPost;
    }

    public void setUserPost(int userPost) {
        this.userPost = userPost;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Post{" +
                "id=" + id +
                ", userPost=" + userPost +
                ", status=" + status +
                ", content='" + content + '\'' +
                ", title='" + title + '\'' +
                ", image='" + image + '\'' +
                ", subject='" + subject + '\'' +
                ", grade='" + grade + '\'' +
                ", price=" + price +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}

