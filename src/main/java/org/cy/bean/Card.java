package org.cy.bean;

/**
 * Created by Reus_cy on 2017/10/30.
 */
public class Card {
    private String cardId;   //银行卡号
    private String cardPw;    //银行卡密码
    private String userId;    //持卡人编号
    private String cardState;  //银行卡状态
    private String cardBalance;   //银行卡余额
    private String cardTime;    //开卡时间
    public Card() {

    }
    public Card(String cardId, String cardPw, String userId, String cardState, String cardBalance, String cardTime) {
        super();
        this.cardId = cardId;
        this.cardPw = cardPw;
        this.userId = userId;
        this.cardState = cardState;
        this.cardBalance = cardBalance;
        this.cardTime = cardTime;
    }
    public String getCardId() {
        return cardId;
    }
    public void setCardId(String cardId) {
        this.cardId = cardId;
    }
    public String getCardPw() {
        return cardPw;
    }
    public void setCardPw(String cardPw) {
        this.cardPw = cardPw;
    }
    public String getUserId() {
        return userId;
    }
    public void setUserId(String userId) {
        this.userId = userId;
    }
    public String getCardState() {
        return cardState;
    }
    public void setCardState(String cardState) {
        this.cardState = cardState;
    }
    public String getCardBalance() {
        return cardBalance;
    }
    public void setCardBalance(String cardBalance) {
        this.cardBalance = cardBalance;
    }
    public String getCardTime() {
        return cardTime;
    }
    public void setCardTime(String cardTime) {
        this.cardTime = cardTime;
    }
    @Override
    public String toString() {
        return "Card [cardId=" + cardId + ", cardPw=" + cardPw + ", userId=" + userId + ", cardState=" + cardState
                + ", cardBalance=" + cardBalance + ", cardTime=" + cardTime + "]";
    }


}

