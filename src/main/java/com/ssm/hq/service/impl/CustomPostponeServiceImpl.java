package com.ssm.hq.service.impl;

import com.ssm.hq.dao.CustomPostponeDao;
import com.ssm.hq.model.CustomPostpone;
import com.ssm.hq.service.CustomPostponeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class CustomPostponeServiceImpl implements CustomPostponeService {
    @Resource
    private CustomPostponeDao customPostponeDao;
    @Override
    public List<CustomPostpone> getAllCustomPostpone() {
        return customPostponeDao.selectAllCustomPostpone();
    }
}
