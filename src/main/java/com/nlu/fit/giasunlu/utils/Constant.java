package com.nlu.fit.giasunlu.utils;

public class Constant {
    public static final String SESSION_USERNAME = "username";
    public static final String COOKIE_REMEMBER = "username";

    public static class Path {
        public static final String LOGIN = "/view/client/login.jsp";
        public static final String LOGIN_ADMIN = "/view/admin/login.jsp";
        public static final String REGISTER = "/view/client/register.jsp";
        public static final String HOME = "/view/client/index.jsp";
        public static final String DASHBOARD = "/view/admin/login.jsp";

    }

    public static String GOOGLE_CLIENT_ID = "698498991064-09hlkni1c35t49i852epq68ri0o4p08o.apps.googleusercontent.com";
    public static String GOOGLE_CLIENT_SECRET = "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";
    public static String GOOGLE_REDIRECT_URI = "http://localhost:8080/giasunlu/login-google";
    public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
    public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
    public static String GOOGLE_GRANT_TYPE = "authorization_code";


    public static String FACEBOOK_APP_ID = "696959065072284";
    public static String FACEBOOK_APP_SECRET = "3632ce93792d29be89f4c4cd79316961";
    public static String FACEBOOK_REDIRECT_URL = "http://localhost:8080/giasunlu/login-facebook";
    public static String FACEBOOK_LINK_GET_TOKEN = "https://graph.facebook.com/oauth/access_token?client_id=%s&client_secret=%s&redirect_uri=%s&code=%s";
}
