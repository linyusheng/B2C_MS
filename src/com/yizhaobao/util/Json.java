package com.yizhaobao.util;

import lombok.Getter;
import lombok.Setter;

import com.sun.corba.se.spi.ior.iiop.JavaCodebaseComponent;
import com.yizhaobao.service.UserService;

/**
 * JSON对象模型
 * @author 林玉生
 *
 */
@SuppressWarnings({ "unused", "serial" })
public class Json implements java.io.Serializable{
	
	@Getter @Setter private boolean success = false;//是否成功
	@Getter @Setter private String msg = "";		//提示信息
	@Getter @Setter private Object rows = null;		//对象信息
	@Getter @Setter private Integer total = 0;		//总记录数
}
