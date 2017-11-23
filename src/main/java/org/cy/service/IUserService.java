package org.cy.service;

import org.cy.bean.User;

/**
 * Created by Reus_cy on 2017/10/30.
 */
public interface IUserService {
    /**
     * 用户登入
     * @param username
     * @param password
     * @return   返回该用户对象
     */
    User userLogin(String username,String password);

    /**
     * 用户注册 ，添加用户信息
     * @param user
     * @return
     */
    int insertUser(User user);


    /**
     * 修改用户信息
     * @param user
     * @return
     */
    int updateUser(User user);


    /**
     * 修改密码
     * @param user
     * @param password
     * @return
     */
    int updatePw(User user,String password);
}
