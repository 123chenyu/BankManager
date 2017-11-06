package org.cy.bean;

/**
 * Created by Reus_cy on 2017/10/30.
 */

public class Trade {
    private String tradeId;   //交易编号
    private String cardId;    //交易银行卡号
    private String tradeTime;  //交易时间
    private String tradeSum;   //交易金额
    private String tradeType;  //交易方式
    private String tradeCharge;  //手续费

    public Trade(String tradeId, String cardId, String tradeTime, String tradeSum, String tradeType,
                 String tradeCharge) {
        super();
        this.tradeId = tradeId;
        this.cardId = cardId;
        this.tradeTime = tradeTime;
        this.tradeSum = tradeSum;
        this.tradeType = tradeType;
        this.tradeCharge = tradeCharge;
    }

    public Trade() {

    }

    @Override
    public String toString() {
        return "Trade [tradeId=" + tradeId + ", cardId=" + cardId + ", tradeTime=" + tradeTime + ", tradeSum="
                + tradeSum + ", tradeType=" + tradeType + ", tradeCharge=" + tradeCharge + "]";
    }

    public String getTradeId() {
        return tradeId;
    }

    public void setTradeId(String tradeId) {
        this.tradeId = tradeId;
    }

    public String getCardId() {
        return cardId;
    }

    public void setCardId(String cardId) {
        this.cardId = cardId;
    }

    public String getTradeTime() {
        return tradeTime;
    }

    public void setTradeTime(String tradeTime) {
        this.tradeTime = tradeTime;
    }

    public String getTradeSum() {
        return tradeSum;
    }

    public void setTradeSum(String tradeSum) {
        this.tradeSum = tradeSum;
    }

    public String getTradeType() {
        return tradeType;
    }

    public void setTradeType(String tradeType) {
        this.tradeType = tradeType;
    }

    public String getTradeCharge() {
        return tradeCharge;
    }

    public void setTradeCharge(String tradeCharge) {
        this.tradeCharge = tradeCharge;
    }

}