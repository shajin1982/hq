package com.ssm.hq.service;

import com.ssm.hq.model.CustomPostpone;

import java.util.List;

public interface CustomPostponeService {
    List<CustomPostpone> getAllCustomPostpone();
    List<CustomPostpone> getAllCustomPostponeName();
    List<CustomPostpone> getCustomPostponeByLikeName(String customName);
}
