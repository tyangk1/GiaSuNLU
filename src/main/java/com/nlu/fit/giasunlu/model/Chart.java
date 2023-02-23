package com.nlu.fit.giasunlu.model;

public class Chart {

    String name;
    String[] labels;
    Long[] data;
    public Chart() {
    }
    public Chart(String[] lable, Long[] data) {
        this.labels = lable;
        this.data = data;
    }
    public Chart(String name, String[] lable, Long[] data) {
        this.name = name;
        this.labels = lable;
        this.data = data;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String[] getLabels() {
        return labels;
    }

    public void setLabels(String[] labels) {
        this.labels = labels;
    }

    public Long[] getData() {
        return data;
    }

    public void setData(Long[] data) {
        this.data = data;
    }
}
