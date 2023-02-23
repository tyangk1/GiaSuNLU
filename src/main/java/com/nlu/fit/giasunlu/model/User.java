package com.nlu.fit.giasunlu.model;

import org.jdbi.v3.core.mapper.reflect.ColumnName;

import java.sql.Timestamp;
import java.util.Date;

public class User extends BaseEntity {

    private int id;
    private String firstName;
    private String lastName;
    private String password;
    private String email;
    private String phoneNumber;
    private String gender;
    private String phone;
    private String address;
    private String avatar;
    private int roleId;
    private String profileImage;
    private Date dateOfBirth;
    private int coin;
    private String verifyCode;
    private int isVerify;
    private String accessToken;
    private int status;

    public User(int id, String firstName, String lastName, String password, String email, String phoneNumber, String gender, String phone, String address, String avatar, int roleId, String profileImage, Date dateOfBirth, int coin, String verifyCode, int isVerify, String accessToken, int status) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.password = password;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.phone = phone;
        this.address = address;
        this.avatar = avatar;
        this.roleId = roleId;
        this.profileImage = profileImage;
        this.dateOfBirth = dateOfBirth;
        this.coin = coin;
        this.verifyCode = verifyCode;
        this.isVerify = isVerify;
        this.accessToken = accessToken;
        this.status = status;
    }

    public User() {
    }

    public User(String email, String password, String firstName, String lastName) {
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public User(String email, String code, String password, String firstName, String lastName) {
        this.email = email;
        this.verifyCode = code;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(String profileImage) {
        this.profileImage = profileImage;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public int getCoin() {
        return coin;
    }

    public void setCoin(int coin) {
        this.coin = coin;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getVerifyCode() {
        return verifyCode;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }

    public int isVerify() {
        return isVerify;
    }

    public void setVerify(int isVerify) {
        this.isVerify = isVerify;
    }

    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", gender='" + gender + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", avatar='" + avatar + '\'' +
                ", roleId=" + roleId +
                ", profileImage='" + profileImage + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                ", coin=" + coin +
                ", verifyCode='" + verifyCode + '\'' +
                ", isVerify=" + isVerify +
                ", accessToken='" + accessToken + '\'' +
                ", status=" + status +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
