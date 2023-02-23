package com.nlu.fit.giasunlu.utils;

import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Parameter;
import com.restfb.Version;
import com.restfb.types.User;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import javax.json.JsonObject;
import java.io.IOException;

public class RestFB {
    public static String getToken(final String code) throws ClientProtocolException, IOException, ParseException {
        String link = String.format(Constant.FACEBOOK_LINK_GET_TOKEN, Constant.FACEBOOK_APP_ID, Constant.FACEBOOK_APP_SECRET, Constant.FACEBOOK_REDIRECT_URL, code);
        String response = Request.Get(link).execute().returnContent().asString();
        JSONParser parser = new JSONParser();
        JSONObject json = (JSONObject) parser.parse(response);
        return json.get("access_token").toString().replaceAll("\"", "");
    }

    public static User getUserInfo(String accessToken) {
        FacebookClient facebookClient = new DefaultFacebookClient(accessToken, Constant.FACEBOOK_APP_SECRET, Version.LATEST);
        return facebookClient.fetchObject("me", User.class, Parameter.with("fields", "id,name,email,picture"));
    }
}


