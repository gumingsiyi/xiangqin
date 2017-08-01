package com.shop.service.impl;

import com.shop.dao.UserInfoDao;
import com.shop.entity.UserInfoEntity;
import com.shop.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by stiles on 2017/7/25.
 */
@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

    private UserInfoDao userInfoDao;
    @Autowired
    public void setUserInfoDao(UserInfoDao userInfoDao) {
        this.userInfoDao = userInfoDao;
    }

    @Override
    public UserInfoEntity load(Integer id) {
        return null;
    }

    @Override
    public UserInfoEntity get(Integer id) {
        return userInfoDao.get(id);
    }

    @Override
    public List<UserInfoEntity> findAll() {
        return userInfoDao.findAll();
    }

    @Override
    public void persist(UserInfoEntity entity) {
        userInfoDao.persist(entity);
    }

    @Override
    public Integer save(UserInfoEntity entity) {
        return userInfoDao.save(entity);
    }

    @Override
    public void saveOrUpdate(UserInfoEntity entity) {
        userInfoDao.saveOrUpdate(entity);
    }

    @Override
    public void delete(Integer id) {
        userInfoDao.delete(id);
    }

    @Override
    public void flush() {
        userInfoDao.flush();
    }
}
