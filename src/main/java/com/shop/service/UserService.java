package com.shop.service;

import com.shop.entity.User;

import java.util.List;

/**
 * Created by stiles on 2017/7/25.
 */
public interface UserService {
    User load(String id);

    User get(String id);

    List<User> findAll();

    void persist(User entity);

    String save(User entity);

    void saveOrUpdate(User entity);

    void delete(String id);

    void flush();
}
