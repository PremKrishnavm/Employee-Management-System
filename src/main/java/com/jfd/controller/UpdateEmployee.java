package com.jfd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jfd.dao.EmployeeDao;
import com.jfd.dto.Employee;

@WebServlet("/updateEmployee")
public class UpdateEmployee extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("employeeId");
		Employee employee = new EmployeeDao().getEmployee(Integer.parseInt(id));
		
		req.setAttribute("employees", employee);
		req.getRequestDispatcher("UpdatEmployee.jsp").forward(req, resp);
	}

}
