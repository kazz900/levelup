package com.gs.levelup.employee.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.gs.levelup.common.Paging;
import com.gs.levelup.common.SearchDatePaging;
import com.gs.levelup.common.SearchDate;
import com.gs.levelup.employee.model.vo.Employee;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("employeeDao")
public class EmployeeDao {
	@Autowired	//root-context.xml 에서 생성한 객체를 자동 연결함
	private SqlSessionTemplate sqlSessionTemplate;
	
	public Employee selectLogin(Employee member) {
		return sqlSessionTemplate.selectOne("memberMapper.selectLogin", member);
	}

	public int insertMember(Employee member) {
		return sqlSessionTemplate.insert("memberMapper.insertMember", member);
	}

	public Employee selectMember(String userid) {
		return sqlSessionTemplate.selectOne("memberMapper.selectMember", userid);
	}

	public int updateMember(Employee member) {
		return sqlSessionTemplate.update("memberMapper.updateMember", member);
	}
	
	public int updateMember2(Employee member) {
		return sqlSessionTemplate.update("memberMapper.updateMember2", member);
	}

	public int deleteMember(String userid) {
		return sqlSessionTemplate.delete("memberMapper.deleteMember", userid);
	}

	public ArrayList<Employee> selectList() {
		List<Employee> list = sqlSessionTemplate.selectList("memberMapper.selectList");
		return (ArrayList<Employee>)list;
	}
	
	//페이징 처리 추가된 회원 목록 조회
	public ArrayList<Employee> selectList(Paging paging) {
		List<Employee> list = sqlSessionTemplate.selectList("memberMapper.selectListP", paging);
		return (ArrayList<Employee>)list;
	}
	
	//회원 전체 목록 갯수 (관리자 제외)
	public int selectListCount() {
		return sqlSessionTemplate.selectOne("memberMapper.selectListCount");
	}

	public int updateLoginOK(Employee member) {
		return sqlSessionTemplate.update("memberMapper.updateLoginOK", member);
	}

	public ArrayList<Employee> selectSearchUserid(SearchDatePaging search) {
		List<Employee> list = sqlSessionTemplate.selectList("memberMapper.selectSearchUserid", search);
		return (ArrayList<Employee>)list;
	}

	public ArrayList<Employee> selectSearchGender(SearchDatePaging search) {
		List<Employee> list = sqlSessionTemplate.selectList("memberMapper.selectSearchGender", search);
		return (ArrayList<Employee>)list;
	}

	public ArrayList<Employee> selectSearchAge(SearchDatePaging search) {
		List<Employee> list = sqlSessionTemplate.selectList("memberMapper.selectSearchAge", search);
		return (ArrayList<Employee>)list;
	}

	public ArrayList<Employee> selectSearchEnrollDate(SearchDatePaging search) {
		List<Employee> list = sqlSessionTemplate.selectList("memberMapper.selectSearchEnrollDate", search);
		return (ArrayList<Employee>)list;
	}

	public ArrayList<Employee> selectSearchLoginOK(SearchDatePaging search) {
		List<Employee> list = sqlSessionTemplate.selectList("memberMapper.selectSearchLoginOK", search);
		return (ArrayList<Employee>)list;
	}

	public int selectCheckId(String userid) {
		return sqlSessionTemplate.selectOne("memberMapper.selectCheckId", userid);
	}
	
	//검색 목록 카운트 관련 
	
	public int selectSearchIDCount(String keyword) {
		return sqlSessionTemplate.selectOne("memberMapper.selectSearchIDCount", keyword);
	}
	
	public int selectSearchGenderCount(String keyword) {
		return sqlSessionTemplate.selectOne("memberMapper.selectSearchGenderCount", keyword);
	}
	
	public int selectSearchAgeCount(int age){
		return sqlSessionTemplate.selectOne("memberMapper.selectSearchAgeCount", age);
	}
	
	public int selectSearchDateCount(SearchDate searchDate) {
		return sqlSessionTemplate.selectOne("memberMapper.selectSearchDateCount", searchDate);
	}
	
	public int selectSearchLoginOKCount(String keyword){
		return sqlSessionTemplate.selectOne("memberMapper.selectSearchLoginOKCount", keyword);
	}
}
