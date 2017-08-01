package com.shop.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.shop.entity.User;
import com.shop.service.UserService;
import com.shop.utils.AjaxUtil;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

@Controller
@ParentPackage("struts-default")
@Namespace("/user")
@Action("userinfo")
@AllowedMethods("detail")
@Results({@Result(name = "success", location = "userinfo.jsp")})

public class UserInfoAction extends ActionSupport implements
        ModelDriven<User>, Preparable {
    private static final long serialVersionUID = -2301203156032690317L;

    private static final Logger LOGGER = Logger.getLogger(UserInfoAction.class);
    private String id;
    private User user;
    private List<User> userInfos;


    private UserService userService;
    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<User> getUserInfos() {
        return userInfos;
    }

    public void setUserInfos(List<User> userInfos) {
        this.userInfos = userInfos;
    }

    @Override
    public User getModel() {
        if (null != id) {
            user = userService.get(id);
        } else {
            user = new User();
        }
        return user;
    }

    @Override
    public String execute() throws Exception {
        LOGGER.info("查询所有用户");
        userInfos = userService.findAll();
        Map session = ActionContext.getContext().getSession();
        session.put("userInfos", userInfos);
        return SUCCESS;
    }

    public void detail() throws IOException {
        String id = ServletActionContext.getRequest().getParameter("id");
        LOGGER.info("查看用户详情：" + id);
        user = userService.get(id);
        AjaxUtil.ajaxJSONResponse(user);
        //指定输出内容类型和编码
        String contentType = "text/html;charset=utf-8";
        ServletActionContext.getResponse().setContentType(contentType);
        //获取输出流，然后使用
        PrintWriter out = ServletActionContext.getResponse().getWriter();
        try{
            //直接进行文本操作
            out.print(AjaxUtil.ajaxJSONResponse(user));
            out.flush();
            out.close();
        }catch(Exception ex){
            out.println(ex.toString());
        }
    }

    @Override
    public void prepare() throws Exception {

    }

}
