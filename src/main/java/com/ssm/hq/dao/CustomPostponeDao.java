package com.ssm.hq.dao;

import com.ssm.hq.model.CustomPostpone;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomPostponeDao {
    List<CustomPostpone> selectAllCustomPostpone();
}
