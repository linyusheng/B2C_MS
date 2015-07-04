package com.yizhaobao.action;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import lombok.Getter;
import lombok.Setter;

import com.opensymphony.xwork2.ActionContext;
import com.yizhaobao.entity.Comment;
import com.yizhaobao.entity.Shop;
import com.yizhaobao.entity.User;
import com.yizhaobao.service.CommentService;
import com.yizhaobao.service.ShopService;
import com.yizhaobao.service.UserService;
import com.yizhaobao.util.PageBean;
import com.yizhaobao.util.Tool;

public class LoginAction {
	
	@Getter @Setter private UserService userService;
	@Getter @Setter private CommentService commentService;
	@Getter @Setter private ShopService shopService;
	@Getter @Setter private User user;
	@Getter @Setter private Collection<User> userColl;
	@Getter @Setter private Collection<Comment> commentColl;
	@Getter @Setter private Collection<Shop> shopColl = new ArrayList<Shop>();
	@Getter @Setter private PageBean page;
	@Getter @Setter private String userName;
	@Getter @Setter private String password;
	@Getter @Setter private String validate;
	
	/**
	 * 判断该用户是否存在
	 */
	public boolean isUserNameExist(String userName) throws Exception{		
		userColl=userService.searchUserByUserName(userName);
		if(userColl.isEmpty())
			return false;
		else 
			return true;
	}
	/**
	 * 登录验证
	 */
	public String login() throws Exception{
		if(userName == null || password == null){
			return "fail";
		}	
		if(userService.isUserNameExist(userName)){
			user = userService.login(userName, password);
			if(user!=null){
				user.setLastLoginTime(Tool.getCurrentTime());
				//更新会话
				updateSession();
				return "success";
			}
		}		
		return "fail";
	}
	/**
	 * 注销，清空session对象
	 */
	@SuppressWarnings("unchecked")
	public String logout() throws Exception{
		Map<String,Object> session=(Map)ActionContext.getContext().getSession();
		session.clear();
		return "success";
	}
	/**
	 * 根据不同的用户权限，登录进入不同的主页
	 */
	@SuppressWarnings("unchecked")
	public String loginIndex()throws Exception{
		Map<String,Object> session=(Map)ActionContext.getContext().getSession();
		if(session.containsKey("loginId")){
			String roleName = (String)session.get("loginRoleName");
			//商户登录
			if(roleName.equals("商户")){
				Integer id=(Integer)session.get("loginId");
				user=userService.loadUser(id);
				//获取该商户的商店集合,目前一个商户只拥有一个商店
				Shop shop = null;
				Iterator it = user.getShops().iterator();
				while(it.hasNext()){
					shop = (Shop)it.next();
				}
				if(shop != null){
					if(page == null){
						page = new PageBean();
					}
					commentColl = commentService.searchShopComment(shop.getShopId(), page);
				}
				return "businessIndex";
			}
		}
		//静态得到5个热门商户
		Integer[] temp = {24,62,264,328,142};
		for (int i = 0; i < temp.length; i++) {
			shopColl.add(shopService.loadShop(temp[i]));
		}
		//获取最新5条点评
		if(page == null){
			page = new PageBean();
		}
		page.setPageSize(5);
		commentColl = commentService.searchNewFiveComment(page);
		return "success";
	}
	/**
	 * 更新Session
	 */
	@SuppressWarnings("unchecked")
	public void updateSession() throws Exception{
		Map<String,Object> session=(Map)ActionContext.getContext().getSession();
		session.put("user", user);
		session.put("loginId", user.getUserId());
		session.put("loginName", user.getUserName());
		session.put("loginRoleName", user.getRole().getRoleName());
		session.put("loginPhoto", user.getPhoto());
	}
	/**
	 *	不做任何响应
	 */
	public String doNothing() throws Exception{
		return "success";
	}
	/**
	 * 生成验证码
	 */
	@SuppressWarnings("unchecked")
	public void newCode() throws Exception{
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("image/JPEG");  
        OutputStream out = response.getOutputStream();  
        // 定义图片的高度和宽度  
        int width = 85;  
        int height = 35;  
        // 定义随机数对象  
        Random ran = new Random();  
        // 定义图片缓冲区，使用RGB模式输出图片  
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);  
        // 定义画笔工具对象  
        Graphics graphics = image.getGraphics();  
        // 设置验证码框的背景颜色  
        graphics.setColor(new Color(200, 200, 200));  
        // 填充整个矩形  
        graphics.fillRect(0, 0, width, height);  
        // 定义要显示的验证码  
        StringBuffer sb = new StringBuffer("");  
        // 定义验证码数组  
        String[] code = { "A", "a", "B", "b", "C", "c", "D", "d", "E", "e",  
                "F", "f", "G", "g", "H", "h", "I", "i", "J", "j", "K", "k",  
                "L", "l", "M", "m", "N", "n", "O", "o", "P", "p", "Q", "q",  
                "R", "r", "S", "s", "T", "t", "U", "u", "V", "v", "W", "w",  
                "X", "x", "Y", "y", "Z", "z", "0", "1", "2", "3", "4", "5",  
                "6", "7", "8", "9", "0", "1", "2", "3", "4", "5", "6", "7",  
                "8", "9", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9",  
                "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1",  
                "2", "3", "4", "5", "6", "7", "8", "9", "0", "1" };  
        for (int i = 0; i < 4; i++) {  
            String str = code[ran.nextInt(code.length)];  
            // 设置颜色  
            graphics.setColor(new Color(ran.nextInt(150), ran.nextInt(150), ran.nextInt(150)));  
            // 设置字体  
            graphics.setFont(new Font("宋体", Font.BOLD, 24));  
            // 绘制验证码  
            graphics.drawString(str, 20 * i+4, 30 - ran.nextInt(5));  
            sb.append(str);  
        }  
        // 随机产生100个干扰点  
        for (int i = 0; i < 100; i++) {  
            // 随机生成干扰点的坐标  
            int x = ran.nextInt(width);  
            int y = ran.nextInt(height);  
            // 随机生成干扰点的颜色  
            graphics.setColor(new Color(ran.nextInt(185) + 40,ran.nextInt(185) + 40, ran.nextInt(185) + 40));  
            // 设置干扰点的位置长宽  
            graphics.drawOval(x, y, 1, 1);  
        }  
        String codeInfo = sb.toString();  
        // 将验证码的值放到session中，以供前台进行验证 
        Map<String,Object> session=(Map)ActionContext.getContext().getSession();
		session.put("code", codeInfo);  
        // 将Image通过out输出为jpeg格式的图片  
        ImageIO.write(image, "JPEG", out);  
        out.flush();
        out.close();
	}
	/**
	 * 检查验证码
	 */
	@SuppressWarnings("unchecked")
	public void checkCode() throws Exception{
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter(); 
		Map<String,Object> session=(Map)ActionContext.getContext().getSession();
		if(!validate.equalsIgnoreCase(session.get("code").toString())){
			out.print(0); 
		}else {  
            out.print(1);  
        }  
        out.flush();  
        out.close();
	}
	/**
	 * 测试方法：将数据写入数据库
	 */
	public void writeTestData()throws Exception {
		User test = null;
		for (int i = 100; i < 505; i++) {
			test = userService.loadUser(i+1);
			test.setPhoto("default.gif");
			userService.saveUser(test);
		}
	}

}
