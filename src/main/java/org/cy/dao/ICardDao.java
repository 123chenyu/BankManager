package org.cy.dao;


import org.apache.ibatis.annotations.Param;
import org.cy.bean.Card;


import java.util.List;

/**
 * Created by Reus_cy on 2017/10/26.
 */
public interface ICardDao {
    /**
     * 根据用户名查找银行卡
     * @return
     */
    List<Card> findCardByUser(@Param("userId") String userId);

    /**
     *修改银行卡密码
     * @param
     * @param password
     * @return
     */
    int updateCardPw(@Param("card") Card card, @Param("password") String password);

    /**
     * 添加银行卡信息
     * @param card
     * @return
     */

    int insertCard(@Param("card") Card card);


    /**
     * 增加余额
     * @param sum
     * @param card
     * @return
     */
    int addBalance(@Param("sum") int sum, @Param("card") Card card);

    /**
     * 减少余额
     * @param sum
     * @param card
     * @return
     */
    int reduceBalance(@Param("sum") int sum, @Param("card") Card card);


    /**
     * 修改银行卡状态
     * @param card
     * @return
     */
    int updateState(@Param("card") Card card);

    /**
     * 删除银行卡
     * @param cardId
     * @return
     */
    int delCard(@Param("cardId") String cardId);

}
