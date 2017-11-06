package org.cy.dao;

import org.apache.ibatis.annotations.Param;
import org.cy.bean.Trade;


import java.util.List;

/**
 * Created by Reus_cy on 2017/10/27.
 */
public interface ITradeDao {
    /**
     * 通过银行卡获取交易信息
     * @param cardId
     * @return
     */
    List<Trade> getTradeByCard(@Param("cardId") String cardId);

    /**
     * 通过银行卡和时间获取交易信息
     * @param cardId
     * @return
     */
    List<Trade> getTradeByTime(@Param("cardId") String cardId, @Param("startTime") String startTime, @Param("endTime") String endTime);


    /**
     * 插入交易记录
     * @param trade
     * @return
     */
    int insertTrade(@Param("trade") Trade trade);

    /**
     * 删除交易记录
     * @param tradeId
     * @return
     */
    int delTrade(@Param("tradeId") String tradeId);

}
