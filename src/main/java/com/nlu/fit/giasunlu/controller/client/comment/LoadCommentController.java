package com.nlu.fit.giasunlu.controller.client.comment;

import com.nlu.fit.giasunlu.model.Comment;
import com.nlu.fit.giasunlu.model.ReplyComment;
import com.nlu.fit.giasunlu.service.CommentService;
import com.nlu.fit.giasunlu.service.serviceImpl.CommentServiceImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "LoadCommentController", value = "/class/comment/load")
public class LoadCommentController extends HttpServlet {
    CommentService commentService = new CommentServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        String commetId = request.getParameter("classId");
        if (commetId == null)
            return;
        List<Comment> comments = commentService.getCommetByPostId(Integer.parseInt(commetId));
        String html = handleHtml(comments);
        PrintWriter out = response.getWriter();
        out.print(html);
        out.close();
    }

    private String handleHtml(List<Comment> comments) {
        StringBuilder html = new StringBuilder();
        String temp = "<div class=\"comment\" id=\"comment-:id\">\n" +
                " <a href=\"#comment-1\" class=\"comment-border-link\">\n" +
                "                        <span class=\"sr-only\">Jump to comment-1</span>\n" +
                "                    </a>" +
                "  <summary>\n" +
                "    <div class=\"comment-heading\">\n" +
                "      <div class=\"comment-info\">\n" +
                "        <a href=\"#\" class=\"comment-author\">:user</a>\n" +
                "      </div>\n" +
                "    </div>\n" +
                "  </summary>\n" +
                "  <div class=\"comment-body\">\n" +
                "    <p>:content</p>\n" +
                "    <button\n" +
                "      class=\"btn success h6\"\n" +
                "      style=\"color: orange\"\n" +
                "      type=\"button\"\n" +
                "      data-toggle=\"reply-form\"\n" +
                "      data-target=\"comment-:id-reply-form\"\n" +
                "    >\n" +
                "      Trả lời\n" +
                "    </button>\n" +
                "\n" +
                "    <form method=\"POST\" class=\"reply-form d-none\" id=\"comment-:id-reply-form\">\n" +
                "      <textarea\n" +
                "        name=\"content\"\n" +
                "        placeholder=\"Trả lời bình luận\"\n" +
                "        rows=\"4\"\n" +
                "      ></textarea>\n" +
                "      <input value=\":userId\" name=\"userId\" style=\"display: none\" />\n" +
                "      <input value=\":id\" name=\"commentId\" style=\"display: none\" />\n" +
                "      <button class=\"btn success h6\" style=\"color: orange\" type=\"submit\">\n" +
                "        Đăng\n" +
                "      </button>\n" +
                "      <button\n" +
                "        class=\"btn success h6\"\n" +
                "        style=\"color: orange\"\n" +
                "        type=\"button\"\n" +
                "        data-toggle=\"reply-form\"\n" +
                "        data-target=\"comment-:id-reply-form\"\n" +
                "      >\n" +
                "        Huỷ\n" +
                "      </button>\n" +
                "    </form>\n" +
                "  :replys" +
                "  </div>\n" +
                "</div>";

        for (Comment comment : comments) {
            html.append(temp.replace(":id", comment.getId() + "")
                    .replace(":userId", comment.getUser().getId() + "")
                    .replace(":user", comment.getUser().getFirstName() + " " + comment.getUser().getLastName())
                    .replace(":content", comment.getContent())
                    .replace(":replys", handleReplyHtml(comment.getReplyComments())));
        }
        return html.toString();
    }

    private String handleReplyHtml(List<ReplyComment> replyComments) {
        String html = "<div class=\"replies\">" +
                " <a href=\"#comment-1\" class=\"comment-border-link\">\n" +
                "                        <span class=\"sr-only\">Jump to comment-1</span>\n" +
                "                    </a>" +
                "                        <details open class=\"comment\" id=\"comment-2\">\n" +
                "                            <summary>\n" +
                "                                <div class=\"comment-info\">\n" +
                "                                    <a href=\"#\" class=\"comment-author\">:user</a>\n" +
                "                                </div>\n" +
                "                            </summary>\n" +
                "                            <div class=\"comment-body\">\n" +
                "                                <p>\n" +
                "                                    :content\n" +
                "                                </p>\n" +
                "                            </div>\n" +
                "                        </details>\n" +
                "                    </div>";
        StringBuilder result = new StringBuilder();
        for (ReplyComment replyComment : replyComments) {
            result.append(html.replace(":user", replyComment.getUser().getFirstName() + " " + replyComment.getUser().getLastName())
                    .replace(":content", replyComment.getContent()));
        }
        return result.toString();
    }
}
