package com.ssm.hq.model;

public class QyWeiXin {
    private String accessToken;
    private String accessTokenTime;
    private String requestUrl;
    private String secretName;
    private String secretValue;
    private String secretAgentId;
    private String corpId;

    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public String getAccessTokenTime() {
        return accessTokenTime;
    }

    public void setAccessTokenTime(String accessTokenTime) {
        this.accessTokenTime = accessTokenTime;
    }

    public String getRequestUrl() {
        return requestUrl;
    }

    public void setRequestUrl(String requestUrl) {
        this.requestUrl = requestUrl;
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

    public void info(){
        System.out.println("一起来吃麻辣烫！");
        System.out.println("name:"+getAccessToken()+" age:"+getAccessTokenTime());
    }
}
