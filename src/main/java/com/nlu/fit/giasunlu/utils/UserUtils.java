package com.nlu.fit.giasunlu.utils;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.model.UserTemp;
import com.nlu.fit.giasunlu.service.UserService;

import java.util.Base64;

public class UserUtils {

    private UserService userService;

    public User generateAccessToken(String token) throws Exception {

        byte[] decodedBytes = Base64.getMimeDecoder().decode(token);
        String decodedMime = new String(decodedBytes);

        ObjectMapper mapper = new ObjectMapper();
        try {
            UserTemp map = mapper.readValue(decodedMime, UserTemp.class);

            User user = userService.findByEmail(map.getEmail());

            if (user != null)
                return user;
            else

                throw new Exception("Token không hợp lệ!");

        } catch (Exception e) {

            throw new Exception("Sai token");

        }

    }
}
