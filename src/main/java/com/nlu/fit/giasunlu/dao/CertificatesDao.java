package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.Certificates;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

@RegisterBeanMapper(Certificates.class)
public interface CertificatesDao {
    @SqlQuery("select * from certificates where id = :id")
    Certificates getCertificatesById(@Bind("id") int id);

    @SqlQuery("select * from certificates where user_id = :id")
    Certificates getCertificatesByUserId(@Bind("id") int id);
    @SqlUpdate("insert into certificates (user_id, school_name, major, image, start_from, end_from, create_at, update_at) values (:userId, :schoolName, :major, :image, :startDate, :endDate, :createAt, :updateAt)")
    void insertCertificates(@BindBean Certificates certificates);

    @SqlUpdate("update certificates set user_id = :userId, school_name = :schoolName, major = :major, image = :image, start_from = :startDate, end_from = :endDate, create_at = :createAt, update_at = :updateAt where id = :id")
    void updateCertificates(@BindBean Certificates certificates);
}
