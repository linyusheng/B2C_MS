package com.yizhaobao.action;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.Advertiseemerge;
import com.yizhaobao.service.AdvertiseemergeService;

public class AdvertiseEmergeAction {
	
	@Getter @Setter private AdvertiseemergeService advertiseemergeService;
	@Getter @Setter private Advertiseemerge advertiseemerge;
	@Getter @Setter private Integer id;
	
	
}
