package com.shop.dao.impl;

import com.shop.dao.UserDao;
import com.shop.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by stiles on 2017/8/1.
 */
@Repository("userDao")
public class UserDaoImpl implements UserDao {
    private SessionFactory sessionFactory;
    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private Session getCurrentSession() {
        return this.sessionFactory.getCurrentSession();
    }

    @Override
    public User load(String id) {
        return this.getCurrentSession().load(User.class, id);
    }

    @Override
    public User get(String id) {
        return this.getCurrentSession().get(User.class, id);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<User> findAll() {
        return (List<User>) this.getCurrentSession()
                .createQuery("from User ").list();
    }

    @Override
    public void persist(User entity) {
        this.getCurrentSession().persist(entity);

    }

    @Override
    public String save(User entity) {
        return (String) this.getCurrentSession().save(entity);
    }

    @Override
    public void saveOrUpdate(User entity) {
        this.getCurrentSession().saveOrUpdate(entity);
    }

    @Override
    public void delete(String id) {
        User entity = this.load(id);
        this.getCurrentSession().delete(entity);
    }

    @Override
    public void flush() {
        this.getCurrentSession().flush();

    }
}
