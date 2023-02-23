package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.Turnover;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Turnover.class)
public interface TurnoverDao {

    @SqlQuery("SELECT * FROM turnover where id = :id")
    Turnover getTurnoverById(@Bind("id") int id);

    @SqlQuery("SELECT * FROM turnover where user_id = :userId")
    List<Turnover> getTurnoverByUserId(@Bind("userId") int userId);

    @SqlQuery("SELECT * FROM turnover")
    List<Turnover> getAllTurnover();

    @SqlQuery("SELECT * FROM turnover where user_id = :userId and month(create_at) = :month and year(create_at) = :year")
    List<Turnover> getTurnoverByUserIdAndMonth(@Bind("userId") int userId, @Bind("month") int month, @Bind("year") int year);

    @SqlQuery("SELECT * FROM turnover where month(create_at) = :month and year(create_at) = :year")
    List<Turnover> getTurnoverByMonth(@Bind("month") int month, @Bind("year") int year);

    @SqlUpdate("INSERT INTO turnover (coin, cost, user_id, create_at, update_at) VALUES (:coin, :cost, :userId, :createAt, :updateAt)")
    void insertTurnover(@BindBean Turnover turnover);

    @SqlUpdate("UPDATE turnover SET coin = :coin, cost = :cost, user_id = :userId, create_at = :createAt, update_at = :updateAt WHERE id = :id")
    void updateTurnover(@BindBean Turnover turnover);

    @SqlUpdate("DELETE FROM turnover WHERE id = :id")
    void deleteTurnover(@Bind("id") int id);

    @SqlQuery("SELECT SUM(cost) FROM turnover where year(create_at) = :year")
    Long totalCostInYear(@Bind("year") int year);

    @SqlQuery("SELECT SUM(cost) FROM turnover where user_id in (SELECT id FROM user where role_id = 2)")
    Long totalCostOfStudent();

    @SqlQuery("SELECT SUM(cost) FROM turnover where user_id in (SELECT id FROM user where role_id = 3)")
    Long totalCostOfTeacher();
}
