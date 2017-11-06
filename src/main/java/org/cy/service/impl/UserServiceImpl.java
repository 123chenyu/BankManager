package org.cy.service.impl;

import org.cy.bean.User;
import org.cy.dao.IUserDao;
import org.cy.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Reus_cy on 2017/10/30.
 */

@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    private IUserDao iUserDao;

    @Override
    public User userLogin(String username, String password) {
        return iUserDao.findByUser(username,password);
    }
}
