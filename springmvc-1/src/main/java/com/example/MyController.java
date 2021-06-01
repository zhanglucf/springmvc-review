package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author zzh
 * @date 2021年05月08日
 */
@Controller
public class MyController {

    @RequestMapping(value = {"/some.do"})
    public ModelAndView doSome(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("msg","这是springmvc的第一个项目！");
        modelAndView.setViewName("/hello.jsp");
//        modelAndView.setViewName("hello");
        return modelAndView;
    }
}
