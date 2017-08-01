package com.shop.service.impl;

import com.shop.dao.UserDao;
import com.shop.entity.User;
import com.shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by stiles on 2017/7/25.
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    private UserDao userDao;

    @Autowired
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public User load(String id) {
        return null;
    }

    @Override
    public User get(String id) {
        return userDao.get(id);
    }

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

    @Override
    public void persist(User entity) {
        userDao.persist(entity);
    }

    @Override
    public String save(User entity) {
        return userDao.save(entity);
    }

    @Override
    public void saveOrUpdate(User entity) {
        userDao.saveOrUpdate(entity);
    }

    @Override
    public void delete(String id) {
        userDao.delete(id);
    }

    @Override
    public void flush() {
        userDao.flush();
    }
}
