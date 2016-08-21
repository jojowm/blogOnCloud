package com.Chris.blogOnCloud.User.controller;

import com.Chris.blogOnCloud.User.util.UserConstant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by chris on 16-8-21.
 */
@Controller
@RequestMapping(value = "/user")
public class LoginController {

    @RequestMapping(value = "/login")
    public ModelAndView forwardLoginPage() {
        ModelAndView mav = new ModelAndView(UserConstant.LOGIN_PAGE);
        return mav;
    }
}
