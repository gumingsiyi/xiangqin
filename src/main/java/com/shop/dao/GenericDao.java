package com.shop.dao;

/**
 * Created by stiles on 2017/7/24.
 */

import java.io.Serializable;
import java.util.List;

public interface GenericDao<T, PK extends Serializable> {
    T load(PK id);

    T get(PK id);

    List<T> findAll();

    void persist(T entity);

    PK save(T entity);

    void saveOrUpdate(T entity);

    void delete(PK id);

    void flush();
}
