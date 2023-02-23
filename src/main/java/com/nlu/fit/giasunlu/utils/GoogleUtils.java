package com.nlu.fit.giasunlu.utils;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.nlu.fit.giasunlu.model.GooglePojo;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.IOException;

public class GoogleUtils {
    public static String getToken(final String code) throws IOException, ParseException {
        String response = Request.Post(Constant.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", Constant.GOOGLE_CLIENT_ID)
                        .add("client_secret", Constant.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri", Constant.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", Constant.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();
        JSONParser parser = new JSONParser();
        JSONObject json = (JSONObject) parser.parse(response);
        String accessToken = json.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    public static GooglePojo getUserInfo(final String accessToken) throws  IOException {
        String link = Constant.GOOGLE_LINK_GET_USER_INFO + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();
        GooglePojo googlePojo = new Gson().fromJson(response, GooglePojo.class);
        return googlePojo;
    }
}