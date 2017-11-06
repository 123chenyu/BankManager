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
}
