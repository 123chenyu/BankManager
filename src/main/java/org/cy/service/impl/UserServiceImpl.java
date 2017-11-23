package org.cy.service.impl;

import org.cy.bean.User;

import org.cy.dao.IUserDao;
import org.cy.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Reus_cy on 2017/10/30.
 */

@Service("userService")
public class UserServiceImpl implements IUserService {

    @Resource
    private IUserDao iUserDao;

    @Override
    public User userLogin(String username, String password) {
        return iUserDao.findByUser(username,password);
    }

    @Override
    public int insertUser(User user) {
       return iUserDao.insertUser(user);
    }

    @Override
    public int updateUser(User user) {
        return iUserDao.updateUser(user);
    }

    @Override
    public int updatePw(User user, String password) {
        return iUserDao.updatePw(user,password);
    }
}
