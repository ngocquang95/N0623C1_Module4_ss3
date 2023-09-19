package com.example.studentmanagement.repository.impl;

import com.example.studentmanagement.model.Student;
import com.example.studentmanagement.repository.IStudentRepository;

import java.util.ArrayList;
import java.util.List;

public class StudentRepository implements IStudentRepository {
    private static List<Student> studentList;

    static {
        studentList = new ArrayList<>();

        studentList.add(new Student(1, "Nguyễn Văn A", 4.9));
        studentList.add(new Student(2, "Nguyễn Văn B", 5.6));
        studentList.add(new Student(3, "Nguyễn Văn C", 9.8));
    }

    @Override
    public List<Student> findAll() {
        return studentList;
    }

    @Override
    public Student findById(int id) {
        for (Student student : studentList) {
            if (student.getId() == id) {
                return student;
            }
        }

        return null;
    }

    @Override
    public void create(Student student) {
        studentList.add(student);
    }
}
