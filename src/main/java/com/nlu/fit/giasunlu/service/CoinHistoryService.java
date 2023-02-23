package com.nlu.fit.giasunlu.service;

import com.nlu.fit.giasunlu.model.CoinHistory;
import java.util.List;

public interface CoinHistoryService {

    void insertCoinHistory();

    void updateCoinHistory();

    void deleteCoinHistory();

    List<CoinHistory>  getCoinHistoryByUserId(int id);
}
