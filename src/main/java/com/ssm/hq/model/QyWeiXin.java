package com.ssm.hq.model;

public class QyWeiXin {
    private String secretName;
    private String secretValue;
    private String secretAgentId;
    private String corpId;
    private String getToken;
    private String getUserInfo;
    private String getUser;
    private String getDepartment;

    public String getGetToken() {
        return getToken;
    }

    public void setGetToken(String getToken) {
        this.getToken = getToken;
    }

    public String getGetUserInfo() {
        return getUserInfo;
    }

    public void setGetUserInfo(String getUserInfo) {
        this.getUserInfo = getUserInfo;
    }

    public String getGetUser() {
        return getUser;
    }

    public void setGetUser(String getUser) {
        this.getUser = getUser;
    }

    public String getGetDepartment() {
        return getDepartment;
    }

    public void setGetDepartment(String getDepartment) {
        this.getDepartment = getDepartment;
    }

    public String getSecretName() {
        return secretName;
    }

    public void setSecretName(String secretName) {
        this.secretName = secretName;
    }

    public String getSecretValue() {
        return secretValue;
    }

    public void setSecretValue(String secretValue) {
        this.secretValue = secretValue;
    }

    public String getSecretAgentId() {
        return secretAgentId;
    }

    public void setSecretAgentId(String secretAgentId) {
        this.secretAgentId = secretAgentId;
    }

    public String getCorpId() {
        return corpId;
    }

    public void setCorpId(String corpId) {
        this.corpId = corpId;
    }
}
