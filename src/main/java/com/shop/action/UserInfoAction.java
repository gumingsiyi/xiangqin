package com.shop.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.shop.entity.User;
import com.shop.service.UserService;
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
@Results({
        @Result(name = "success", location = "userinfo.jsp"),
        @Result(name = "error", location = "/error.jsp"),
        @Result(name = "detail", location = "userdetail.jsp")
})

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

    public String detail() throws IOException {
        LOGGER.info("查看用户详情：" + user.getId());
        System.out.println(user.getId());
        user = userService.get(user.getId());
        //指定输出内容类型和编码
        String contentType = "text/html;charset=utf-8";
        ServletActionContext.getResponse().setContentType(contentType);
        //获取输出流，然后使用
        PrintWriter out = ServletActionContext.getResponse().getWriter();
        try{
            Map request = (Map) ActionContext.getContext().get("request");
            request.put("user", user);
            //直接进行文本操作
            return "detail";
        }catch(Exception ex){
            out.println(ex.toString());
        }
        return ERROR;
    }

    @Override
    public void prepare() throws Exception {

    }

}
