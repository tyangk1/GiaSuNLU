package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.Advertisement;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Advertisement.class)
public interface AdvertisementDao {
    @SqlQuery("select * from advertisement where id = :id")
    Advertisement getAdvertisementById(@Bind("id") int id);

    @SqlQuery("select * from advertisement")
    List<Advertisement> getAllAdvertisement();


    @SqlUpdate("insert into advertisement (id, user_id, title, price, thumbnail, content, status, start_at, end_at, brief_desc) values (:id, :userId, :title, :price, :thumbnail, :content, :status, :startAt, :endAt, :briefDesc)")
    void insertAdvertisement(@BindBean Advertisement advertisement);

    @SqlUpdate("update advertisement set user_id = :userId, title = :title, price = :price, thumbnail = :thumbnail, content = :content, status = :status, start_at = :startAt, end_at = :endAt, brief_desc = :briefDesc where id = :id")
    void updateAdvertisement(@BindBean Advertisement advertisement);

    @SqlUpdate("delete from advertisement where id = :id")
    void deleteAdvertisement(@Bind("id") int id);
}
