package com.nlu.fit.giasunlu.model;


import org.jdbi.v3.core.mapper.reflect.ColumnName;

import javax.persistence.Column;

public class QA extends BaseEntity {
    private int id;
    @ColumnName("user_q_a")
    private Long userQA;
    private Long classId;
    private String content;
    private String questImage;

    public QA() {
    }

    public QA(int id, Long userQA, Long postId, String content, String questImage) {
        this.id = id;
        this.userQA = userQA;
        this.classId = postId;
        this.content = content;
        this.questImage = questImage;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    @ColumnName("user_q_a")
    public Long getUserQA() {
        return userQA;
    }
    @ColumnName("user_q_a")
    public void setUserQA(Long userQA) {
        this.userQA = userQA;
    }

    public Long getClassId() {
        return classId;
    }

    public void setClassId(Long classId) {
        this.classId = classId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getQuestImage() {
        return questImage;
    }

    public void setQuestImage(String questImage) {
        this.questImage = questImage;
    }

    @Override
    public String toString() {
        return "QA{" +
                "id=" + id +
                ", userQA=" + userQA +
                ", postId=" + classId +
                ", content='" + content + '\'' +
                ", questImage='" + questImage + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}

