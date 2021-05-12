package com.example;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author zzh
 * @date 2021年05月10日
 */
@Controller
public class MessageConverterExampleController {

    @RequestMapping(value = "/m1.do", method = RequestMethod.GET)
    public String method() {
        return "show";
    }

    @RequestMapping(value = "/_ajax.do", method = RequestMethod.GET)
    public void method2(HttpServletResponse response,Student student) throws IOException {
        PrintWriter writer = response.getWriter();
        ObjectMapper om = new ObjectMapper();
        String json = om.writeValueAsString(student);
        writer.write(json);
        response.setContentType("application/json; charset=UTF-8");
    }

    @ResponseBody
    @RequestMapping(value = "/_ajax2.do", method = RequestMethod.GET)
    public Student method3(Student student) throws IOException {
        return student;
    }
}
