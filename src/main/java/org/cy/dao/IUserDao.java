package org.cy.dao;


import org.apache.ibatis.annotations.Param;

import org.cy.bean.User;

/**
 * Created by Reus_cy on 2017/10/25.
 */
public interface IUserDao {

    /**
     * 根据用户名和密码查询用户
     * @return  返回User对象，对象内封装所有元素
     */
    User findByUser(@Param("userName") String username, @Param("userPw") String password);


    /**
     * 修改密码，根据User对象信息和新密码来修改密码
     * @param user
     * @return
     */
    int updatePw(@Param("user") User user, @Param("password") String password);

    /**
     * 修改用户信息，User对象内封装了用户全部信息
     * @param user
     * @return
     */
    int updateUser(@Param("user") User user);

    /**
     * 插入用户
     * @param user
     * @return
     */
    int insertUser(@Param("user") User user);
}
