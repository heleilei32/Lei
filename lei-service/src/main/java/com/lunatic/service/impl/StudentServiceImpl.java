package com.lunatic.service.impl;

import com.lunatic.service.StudentService;
import com.lunatic.batis_model.Student;
import com.lunatic.mybitis_dao.mapper.StudentMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("StudentService")
public class StudentServiceImpl implements StudentService {
    @Resource
    private StudentMapper studentMapper;

    public Boolean addStudent(Student student) {
        return studentMapper.insert(student);
    }

    public Boolean deleteStudentById(Integer id) {
        Student student = new Student();
        student.setId(id);
        return studentMapper.delete(student);
    }

    public Boolean updateStudentById(Student student) {
        return studentMapper.update(student);
    }

    public List<Student> findAllStudent(Student student) {
        return studentMapper.select(student);
    }
}
