package com.yige.service;

import com.yige.dao.StudentDao;
import com.yige.vo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
    @Resource
    private StudentDao dao;
    @Override
    public int addStudent(Student student) {
        int res=dao.insertStudent(student);
        return res;
    }

    @Override
    public List<Student> findStudnets() {
        List<Student> list=dao.selectStudents();
        return list;
    }
}
