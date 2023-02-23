package com.nlu.fit.giasunlu.model;


public class PostImage {

    private Long postId;
    private String link;

    public PostImage() {
    }

    public PostImage(Long postId, String link) {
        this.postId = postId;
        this.link = link;
    }

    public Long getPostId() {
        return postId;
    }

    public void setPostId(Long postId) {
        this.postId = postId;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString() {
        return "PostImage{" +
                "postId=" + postId +
                ", link='" + link + '\'' +
                '}';
    }
}

