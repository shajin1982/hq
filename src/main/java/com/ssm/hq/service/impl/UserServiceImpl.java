package com.ssm.hq.service.impl;

import com.ssm.hq.dao.UserDao;
import com.ssm.hq.model.User;
import com.ssm.hq.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    @Override
    public List<User> getAllUser() {
        return userDao.selectAllUser();
    }
}
