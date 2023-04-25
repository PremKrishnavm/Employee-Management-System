package com.jfd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jfd.dao.EmployeeDao;
import com.jfd.dto.Admin;
import com.jfd.dto.Employee;


@WebServlet("/saveUpdatedEmployee")
public class SaveUpdatedEmployee extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		Admin admin = (Admin) session.getAttribute("admin");

		if (admin != null) {

			int employeeId = Integer.parseInt(req.getParameter("employeeId"));
			String employeeName = req.getParameter("employeeName");
			String employeeGender = req.getParameter("employeeGender");
			long employeePhno = Long.parseLong(req.getParameter("employeePh_no"));
			String employeeEmail = req.getParameter("employeeEmail");
			String employeeDesig = req.getParameter("employeeDesig");
			double employeeSalary = Double.parseDouble(req.getParameter("employeeSalary"));
			String employeeAddress = req.getParameter("employeeAddress");

			Employee employee = new Employee();
			employee.setEmployeeId(employeeId);
			employee.setEmployeeName(employeeName);
			employee.setEmployeeGender(employeeGender);
			employee.setEmployeePh_no(employeePhno);
			employee.setEmployeeEmail(employeeEmail);
			employee.setEmployeeDesig(employeeDesig);
			employee.setEmployeeSalary(employeeSalary);
			employee.setEmployeeAddress(employeeAddress);

			new EmployeeDao().updateEmployee(employee);

			List<Employee> employees = new EmployeeDao().getAllEmployees();
			req.setAttribute("employees", employees);

			req.getRequestDispatcher("ViewEmployees.jsp").forward(req, resp);
		} else {
			resp.sendRedirect("AdminLogin.jsp");
		}
	}

}
