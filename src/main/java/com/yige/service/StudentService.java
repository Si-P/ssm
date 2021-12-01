package com.yige.service;

import com.yige.vo.Student;

import java.util.List;

public interface StudentService {
    int addStudent(Student student);
    List<Student> findStudnets();
}
