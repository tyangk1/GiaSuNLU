package com.nlu.fit.giasunlu.controller.client.comment;

import com.nlu.fit.giasunlu.model.Comment;
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

@WebServlet(name = "AddCommentController", value = "/class/comment/add")
public class AddCommentController extends HttpServlet {
    CommentService commentService = new CommentServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Comment comment = new Comment();
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        try {
            BeanUtils.populate(comment, request.getParameterMap());
            comment.setUserId((long) user.getId());
            System.out.println(comment);
            commentService.insertComment(comment);
            out.print("success");

        } catch (IllegalAccessException | InvocationTargetException e) {
            out.print("fail");
        }
        out.close();
    }
}
