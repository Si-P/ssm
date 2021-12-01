package com.yige.controller;

import com.yige.service.StudentService;
import com.yige.vo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/student")
public class scon {
    @Resource
    private StudentService service;

    //注册
    @RequestMapping(value = "/add.do")
    public ModelAndView addStudent(Student student){ //接受参数
        ModelAndView mv=new ModelAndView();
        String tips="没注册上";
        //调用service
        int nums=service.addStudent(student);
        if(nums==1){
            tips=student.getName()+"注册成功！";
        }
        //添加数据,框架就会自动放入request
        mv.addObject("tips",tips);

        //指定视图，需要完整路径
        mv.setViewName("fuck");
        return mv;
    }
    //查询
    @RequestMapping(value = "/find.do")
    @ResponseBody
    public List<Student> queryStudents(){ //接受参数
        List<Student> list=service.findStudnets();
        return list;
    }
}
