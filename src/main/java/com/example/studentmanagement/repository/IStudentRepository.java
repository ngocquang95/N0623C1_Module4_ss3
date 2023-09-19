package com.example.studentmanagement.repository;

import com.example.studentmanagement.model.Student;

import java.util.List;

public interface IStudentRepository {
    List<Student> findAll();

    Student findById(int id);

    void create(Student student);
}
