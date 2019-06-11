package com.ssm.hq.dao;

import com.ssm.hq.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {
    List<User> selectAllUser();
}
