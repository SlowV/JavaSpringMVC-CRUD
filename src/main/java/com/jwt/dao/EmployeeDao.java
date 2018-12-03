package com.jwt.dao;

import com.jwt.model.Employee;

import java.util.ArrayList;
import java.util.List;

public interface EmployeeDao {

    public void addEmployee(Employee employee);

    public List<Employee> getAllEmployees();

    public void deleteEmployee(Integer employeeId);

    public void updateEmployee(Employee employee);

    public Employee getEmployee(int employeeid);
}
