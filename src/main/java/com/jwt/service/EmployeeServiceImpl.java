package com.jwt.service;

import com.jwt.dao.EmployeeDao;
import com.jwt.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeDao employeeDAO;

    @Override
    @Transactional
    public void addEmployee(Employee employee) {
        employeeDAO.addEmployee(employee);
    }

    @Override
    @Transactional
    public List<Employee> getAllEmployees() {
        return employeeDAO.getAllEmployees();
    }

    @Override
    @Transactional
    public void deleteEmployee(Integer employeeId) {
        employeeDAO.deleteEmployee(employeeId);
    }

    public Employee getEmployee(int empid) {
        return employeeDAO.getEmployee(empid);
    }

    public void updateEmployee(Employee employee) {
        // TODO Auto-generated method stub
        employeeDAO.updateEmployee(employee);
    }

    public void setEmployeeDAO(EmployeeDao employeeDAO) {
        this.employeeDAO = employeeDAO;
    }

}
