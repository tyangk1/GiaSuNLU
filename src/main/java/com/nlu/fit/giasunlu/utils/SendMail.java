package com.nlu.fit.giasunlu.utils;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

public class SendMail {
    private final static String username = "19130062@st.hcmuaf.edu.vn";
    private final static String password = "giangkoykun19130062";

    public String getRandom() {
        //tạo code đăng ký
        Random rd = new Random();
        int code = rd.nextInt(999999);
        return String.format("%06d", code);
    }

    public static void sendMail(String to, String subject, String text) {
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS

        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        };
        Session session = Session.getInstance(prop, auth);
        try {
            Message message = new MimeMessage(session);
            message.setHeader("Content-Type", "text/plain; charset=UTF-8");
            message.addHeader("format", "flowed");
            message.addHeader("Content-Transfer-Encoding", "8bit");
            message.setFrom(new InternetAddress(username, "GIASUNLU"));
            InternetAddress[] toAdd = {new InternetAddress(to)};
            message.setSubject(subject);
            message.setText(text);
            message.setSentDate(new Date());
            message.setRecipients(Message.RecipientType.TO, toAdd);
            Transport.send(message);
        } catch (MessagingException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

}