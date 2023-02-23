package com.nlu.fit.giasunlu.controller.client.comment;

import com.nlu.fit.giasunlu.model.ReplyComment;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.CommentService;
import com.nlu.fit.giasunlu.service.serviceImpl.CommentServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

@WebServlet(name = "ReplyCommentController", value = "/class/comment/reply")
public class ReplyCommentController extends HttpServlet {
    CommentService commentService = new CommentServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ReplyComment replyComment = new ReplyComment();
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("account");
        PrintWriter out = resp.getWriter();
        try {
            BeanUtils.populate(replyComment, req.getParameterMap());
            System.out.println(replyComment);
            // map user id
            replyComment.setUserId(user.getId());


            commentService.insertReplyComment(replyComment);
            out.print("success");

        } catch (IllegalAccessException | InvocationTargetException e) {
            out.print("fail");
        }
        out.close();
    }
}
