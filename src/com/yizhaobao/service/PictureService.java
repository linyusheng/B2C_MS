package com.yizhaobao.service;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.PictureDAO;
import com.yizhaobao.entity.Picture;

public class PictureService {
	//图片
	@Getter @Setter private PictureDAO pictureDAO;

	/*
	 * 根据主键ID查找对象
	 */
	public Picture loadPicture(Integer id){
		return pictureDAO.findById(id);
	}
	/*
	 * 执行新增对象或修改对象的保存操作
	 */
	public void savePicture(Picture picture) {
		pictureDAO.merge(picture);
	}
	/*
	 * 根据主键ID删除数据库中对象
	 */
	public void removePicture(Integer id) {
		pictureDAO.delete(pictureDAO.findById(id));
	}

}
