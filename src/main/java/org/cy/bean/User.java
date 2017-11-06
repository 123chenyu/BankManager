package org.cy.bean;

/**
 * Created by Reus_cy on 2017/10/30.
 */
public class User {

    private String userId;  //用户id
    private String userName; //用户名
    private String userPw;   //用户密码
    private String userXm;   //用户姓名
    private String userSr;  //用户生日
    private String userSfz;  //用户身份证号码
    private String userSjh;  //用户手机号
    private String userZz;  //用户住址
    private String userYx;   //用户邮箱

    public User() {
    }


    public User(String userId, String userName, String userPw, String userXm, String userSr, String userSfz, String userSjh, String userZz, String userYx) {
        this.userId = userId;
        this.userName = userName;
        this.userPw = userPw;
        this.userXm = userXm;
        this.userSr = userSr;
        this.userSfz = userSfz;
        this.userSjh = userSjh;
        this.userZz = userZz;
        this.userYx = userYx;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId='" + userId + '\'' +
                ", userName='" + userName + '\'' +
                ", userPw='" + userPw + '\'' +
                ", userXm='" + userXm + '\'' +
                ", userSr='" + userSr + '\'' +
                ", userSfz='" + userSfz + '\'' +
                ", userSjh='" + userSjh + '\'' +
                ", userZz='" + userZz + '\'' +
                ", userYx='" + userYx + '\'' +
                '}';
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPw() {
        return userPw;
    }

    public void setUserPw(String userPw) {
        this.userPw = userPw;
    }

    public String getUserXm() {
        return userXm;
    }

    public void setUserXm(String userXm) {
        this.userXm = userXm;
    }

    public String getUserSr() {
        return userSr;
    }

    public void setUserSr(String userSr) {
        this.userSr = userSr;
    }

    public String getUserSfz() {
        return userSfz;
    }

    public void setUserSfz(String userSfz) {
        this.userSfz = userSfz;
    }

    public String getUserSjh() {
        return userSjh;
    }

    public void setUserSjh(String userSjh) {
        this.userSjh = userSjh;
    }

    public String getUserZz() {
        return userZz;
    }

    public void setUserZz(String userZz) {
        this.userZz = userZz;
    }

    public String getUserYx() {
        return userYx;
    }

    public void setUserYx(String userYx) {
        this.userYx = userYx;
    }
}