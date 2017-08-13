package com.shop.action;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.shop.entity.User;
import com.shop.service.UserService;
import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
@ParentPackage("struts-default")
@Namespace("/admin")
@Action("useradd")
@AllowedMethods("detail")
@Results({@Result(name = "success", location = "userinfo.jsp")})

public class UserAddAction extends ActionSupport implements
        ModelDriven<User>, Preparable {
    private static final long serialVersionUID = 1L;

    private static final Logger LOGGER = Logger.getLogger(UserInfoAction.class);
    private User user;

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

    @Override
    public User getModel() {
        if (user == null) {
            user = new User();
        }
        return user;
    }

    @Override
    public String execute() throws Exception {
        LOGGER.info("添加用户" + user.getId());
        //Map session = ActionContext.getContext().getSession();
        userService.save(user);
        return SUCCESS;
    }

    @Override
    public void prepare() throws Exception {

    }

}
