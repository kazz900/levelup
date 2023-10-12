package com.gs.levelup.employee.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.common.SearchDatePaging;
import com.gs.levelup.employee.model.dao.EmployeeDao;
import com.gs.levelup.employee.model.vo.Employee;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService{
	@Autowired //자동 DI 처리됨 : 자동 객체 생성됨
	private EmployeeDao employeeDao;
	
	@Override
	public Employee selectLogin(Employee employee) {	
		return employeeDao.selectLogin(employee);
	}
	
	@Override
	public int insertEmployee(Employee employee) {
		return employeeDao.insertMember(employee);
	}

	@Override
	public Employee selectEmployee(String userid) {
		return employeeDao.selectMember(userid);
	}
	
	@Override
	public int updateEmployee(Employee employee) {
		return employeeDao.updateMember(employee);
	}
	
	@Override
	public int updateEmployee2(Employee employee) {
		return employeeDao.updateMember2(employee);
	}

	@Override
	public int deleteEmployee(String userid) {
		return employeeDao.deleteMember(userid);
	}

	@Override
	public ArrayList<Employee> selectList() {
		return employeeDao.selectList();
	}
	
	@Override
	public ArrayList<Employee> selectList(Paging paging) {
		return employeeDao.selectList(paging);
	}

	@Override
	public int selectListCount() {
		return employeeDao.selectListCount();
	}
	
	@Override
	public int updateLoginOK(Employee employee) {
		return employeeDao.updateLoginOK(employee);
	}

	@Override
	public ArrayList<Employee> selectSearchUserid(SearchDatePaging searchDatePaging) {
		return employeeDao.selectSearchUserid(searchDatePaging);
	}

	@Override
	public ArrayList<Employee> selectSearchGender(SearchDatePaging searchDatePaging) {
		return employeeDao.selectSearchGender(searchDatePaging);
	}

	@Override
	public ArrayList<Employee> selectSearchAge(SearchDatePaging searchDatePaging) {		
		return employeeDao.selectSearchAge(searchDatePaging);
	}

	@Override
	public ArrayList<Employee> selectSearchEnrollDate(SearchDatePaging searchDatePaging) {	
		return employeeDao.selectSearchEnrollDate(searchDatePaging);
	}

	@Override
	public ArrayList<Employee> selectSearchLoginOK(SearchDatePaging searchDatePaging) {
		return employeeDao.selectSearchLoginOK(searchDatePaging);
	}

	@Override
	public int selectCheckId(String userid) {		
		return employeeDao.selectCheckId(userid);
	}
	
	//검색 목록 카운트 관련 
	@Override
	public int selectSearchIDCount(String keyword) {
		return employeeDao.selectSearchIDCount(keyword);
	}
	
	@Override
	public int selectSearchGenderCount(String keyword) {
		return employeeDao.selectSearchGenderCount(keyword);
	}
	
	@Override
	public int selectSearchAgeCount(int age){
		return employeeDao.selectSearchAgeCount(age);
	}
	
	@Override
	public int selectSearchDateCount(SearchDate searchDate) {
		return employeeDao.selectSearchDateCount(searchDate);
	}
	
	@Override
	public int selectSearchLoginOKCount(String keyword){
		return employeeDao.selectSearchLoginOKCount(keyword);
	}
}
