package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.Class;
import com.nlu.fit.giasunlu.model.CoinHistory;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(CoinHistory.class)
public interface CoinHistoryDao {

    @SqlQuery("select * from coin_history where id = :id")
    CoinHistory getClassById(@Bind("id") int id);

    @SqlQuery("select * from coin_history where user_id = :id order by date desc")
    List<CoinHistory> getAllClass(@Bind("id") int id);

    @SqlUpdate("insert into coin_history (user_id ,coin  ,date  , content   ,type,payment_method   ,create_at , update_at) values ( :userId, :coin, :date, :content, :type, :paymentMethod, now(), now())")
    void insert(@BindBean CoinHistory input);

    @SqlUpdate("update coin_history set user_id = :userId, coin = :coin, date = :date, content = :content, type = :type, payment_method = :paymentMethod,update_at = now() where id = :id")
    void update(@BindBean CoinHistory input);

    @SqlUpdate("delete from coin_history where id = :id")
    void delete(@Bind("id") int id);
}
