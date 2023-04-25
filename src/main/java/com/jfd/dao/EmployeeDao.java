package com.jfd.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jfd.dto.Employee;

public class EmployeeDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("raju");
	EntityManager manager = factory.createEntityManager();
	EntityTransaction transaction = manager.getTransaction();

	public void saveEmployee(Employee employee) {
		transaction.begin();
		manager.persist(employee);
		transaction.commit();
	}

	public List<Employee> getAllEmployees() {
		Query query = manager.createQuery("select e from Employee e");
		List employees = query.getResultList();
		return employees;
	}

	public Employee getEmployee(int employeeId) {
		return manager.find(Employee.class, employeeId);
	}

	public void updateEmployee(Employee employee) {
		transaction.begin();
		manager.merge(employee);
		transaction.commit();
	}

	public void deleteEmployee(int id) {
		transaction.begin();
		manager.remove(manager.find(Employee.class, id));
		transaction.commit();
	}
}
