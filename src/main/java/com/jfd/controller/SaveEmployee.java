package com.jfd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jfd.dao.EmployeeDao;
import com.jfd.dto.Admin;
import com.jfd.dto.Employee;

@WebServlet("/save")
public class SaveEmployee extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		if (admin != null) {

			String name = req.getParameter("employeeName");
			String gender = req.getParameter("employeeGender");
			String StringEmployeePh_no = req.getParameter("employeePh_no");
			String email = req.getParameter("employeeEmail");
			String designation = req.getParameter("desig");
			String salary = req.getParameter("employeeSalary");
			String address = req.getParameter("employeeAddress");

			long PhoneNumber = Long.parseLong(StringEmployeePh_no);

			double empsalary = Double.parseDouble(salary);

			Employee employee = new Employee();
			employee.setEmployeeName(name);
			employee.setEmployeeGender(gender);
			employee.setEmployeePh_no(PhoneNumber);
			employee.setEmployeeEmail(email);
			employee.setEmployeeDesig(designation);
			employee.setEmployeeSalary(empsalary);
			employee.setEmployeeAddress(address);

			new EmployeeDao().saveEmployee(employee);

			resp.sendRedirect("Dashboard.jsp");
		} else {
			resp.sendRedirect("AdminLogin.jsp");
		}
	}
}
