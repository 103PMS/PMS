package com.estate.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.estate.entity.Department;
import com.estate.entity.User;
import com.estate.service.IDepartService;
import com.opensymphony.xwork2.ActionSupport;

@Controller("DepartAction")
public class DepartAction extends ActionSupport {
	
	
	private List<Department> departList;//存放所有部门信息
	
	private Department department;
	
	private int id;//存放从页面传过来的部门id
	
	private List<User> userList;//存放所有用户信息
	
	private String[] idStr;//存放页面传过来的id数组
	
	
	
	@Resource(name="iDepartService")//Spring 反转注解
	private IDepartService departService;
	
	
	/**
	 * 属性的get与set的方法
	 * @return
	 */
	public List<Department> getDepartList() {
		return departList;
	}

	public void setDepartList(List<Department> departList) {
		this.departList = departList;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	
	
	

	public String[] getIdStr() {
		return idStr;
	}

	public void setIdStr(String[] idStr) {
		this.idStr = idStr;
	}
	

	/**
	 * 获取所有部门
	 * @return
	 */
	public String getDeptList(){
		//调用Service层的方法
		departList = departService.getDeptList();
		return SUCCESS;
	}
	
	/**
	 * 添加、编辑部门，保存
	 */
	public String departSave(){
		departService.departSave(department);
		return SUCCESS;
	}
	
	/**
	 * 根据Id查找部门
	 */
	
	public String findById(){
		userList = departService.userList();
		department = departService.findById(id);
		return SUCCESS;
	}
	
	
	
	/**
	 * 到部门添加页面
	 */
	public String toDepartAdd(){
		//获取用户列表，在页面上以下拉选择框形式供用户选择
		userList = departService.userList();
		return SUCCESS;
	}
	
	/**
	 * 删除部门
	 */
	
	public String delDepart(){
		departService.delDepart(idStr);
		return SUCCESS;
	}
	
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

}
