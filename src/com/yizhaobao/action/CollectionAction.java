package com.yizhaobao.action;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.Collection;
import com.yizhaobao.service.CollectionService;

public class CollectionAction {
	
	@Getter @Setter private CollectionService collectionService;
	@Getter @Setter private Collection collection;
	@Getter @Setter private Integer id;
	@Getter @Setter private Integer[] ids;
	
	// 新增和编辑的数据读取操作
	public String load() throws Exception{
		if (id == null) {
			return "success";
		}
		collection = collectionService.loadCollection(id);
		return "success";
	}
	// 删除数据操作
	public String remove() throws Exception{
		if(id != null){
			collectionService.removeCollection(id);
		}
		return "success";
	}
}
