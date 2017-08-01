package com.shop.dao.impl;

import com.shop.dao.UserInfoDao;
import com.shop.entity.UserInfoEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by stiles on 2017/7/24.
 */
@Repository("userInfoDao")
public class UserInfoDaoImpl implements UserInfoDao {

    private SessionFactory sessionFactory;
    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private Session getCurrentSession() {
        return this.sessionFactory.getCurrentSession();
    }

    @Override
    public UserInfoEntity load(Integer id) {
        return this.getCurrentSession().load(UserInfoEntity.class, id);
    }

    @Override
    public UserInfoEntity get(Integer id) {
        return this.getCurrentSession().get(UserInfoEntity.class, id);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<UserInfoEntity> findAll() {
        return (List<UserInfoEntity>) this.getCurrentSession()
                .createQuery("from UserInfoEntity ").list();
    }

    @Override
    public void persist(UserInfoEntity entity) {
        this.getCurrentSession().persist(entity);

    }

    @Override
    public Integer save(UserInfoEntity entity) {
        return (Integer) this.getCurrentSession().save(entity);
    }

    @Override
    public void saveOrUpdate(UserInfoEntity entity) {
        this.getCurrentSession().saveOrUpdate(entity);
    }

    @Override
    public void delete(Integer id) {
        UserInfoEntity entity = this.load(id);
        this.getCurrentSession().delete(entity);
    }

    @Override
    public void flush() {
        this.getCurrentSession().flush();

    }
}
