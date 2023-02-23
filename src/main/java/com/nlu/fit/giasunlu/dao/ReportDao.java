package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.Report;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Report.class)
public interface ReportDao {

    @SqlQuery("select * from report where id=:id")
    Report getById(@Bind("id") int id);

    @SqlQuery("select  * from report where status=:status")
    List<Report> getReportWithStatus(@Bind("status") int status);

    @SqlQuery("select * from report order by id desc")
    List<Report> getReports();

    @SqlQuery("select * from report where post_id=:postId")
    List<Report> getReportFromPost(@Bind("postId") int postId);

    @SqlQuery("select * from report where post_id=:postId and status=:status")
    List<Report> getReportFromPostWithStatus(@Bind("postId") int postId, @Bind("status") int status);

    @SqlUpdate("insert into report (post_id, user_id, content, status) values (:postId, :userId, :content, :status)")
    void insert(@BindBean Report report);

    @SqlUpdate("update report set status=:status,content=:content where id=:id")
    void update(@BindBean Report report);

    @SqlUpdate("update report set status=:status where id=:id")
    void updateStatus(@Bind("id") int id, @Bind("status") int status);

    @SqlUpdate("delete from report where id=:id")
    void delete(@Bind("id") int id);
}
