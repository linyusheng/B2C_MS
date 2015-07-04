package com.yizhaobao.action;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.Picture;
import com.yizhaobao.service.PictureService;

public class PictureAction {
	
	@Getter @Setter private PictureService pictureService;
	@Getter @Setter private Picture picture;
	@Getter @Setter private Integer id;
	
	
}
