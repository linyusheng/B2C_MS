package com.yizhaobao.action;

import lombok.Getter;
import lombok.Setter;

import com.yizhaobao.entity.Message;
import com.yizhaobao.service.MessageService;

public class MessageAction {
	
	@Getter @Setter private MessageService messageService;
	@Getter @Setter private Message message;
	@Getter @Setter private Integer id;
	@Getter @Setter private Integer[] ids;
	
	/**
	 * 
	 */
	public String load() throws Exception{
		message = messageService.loadMessage(1);
		return "success";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
