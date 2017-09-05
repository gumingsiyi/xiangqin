package com.shop.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.shop.service.UserService;
import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.Map;

/**
 * Created by stiles on 2017/9/5.
 */
@Controller
@ParentPackage("struts-default")
@Namespace("/admin")
@Action("userdel")
@Results({
        @Result(name = "success",type = "redirect", location = "/user/userinfo.action"),
        @Result(name = "error", location = "/error.jsp")
})
public class UserDelAction extends ActionSupport {
    private static final Logger LOGGER = Logger.getLogger(UserInfoAction.class);
    private String id;

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

    @Override
    public String execute() throws Exception {
        LOGGER.info("删除用户" + id);
        try {
            userService.delete(id);
        } catch (Exception e) {
            Map request = (Map) ActionContext.getContext().get("request");
            request.put("errorMsg", "删除发生错误");
            return ERROR;
        }
        return SUCCESS;
    }

}
