package com.shop.service;

import com.shop.entity.UserInfoEntity;

import java.util.List;

/**
 * Created by stiles on 2017/7/25.
 */
public interface UserInfoService {
    UserInfoEntity load(Integer id);

    UserInfoEntity get(Integer id);

    List<UserInfoEntity> findAll();

    void persist(UserInfoEntity entity);

    Integer save(UserInfoEntity entity);

    void saveOrUpdate(UserInfoEntity entity);

    void delete(Integer id);

    void flush();
}
