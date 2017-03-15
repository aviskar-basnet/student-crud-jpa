package com.aviskar.sample.student.crud;

import java.util.List;

public interface StudentService {

	List<Student> findAll();

	Student save(Student student);

	Student findById(Long id);
}
