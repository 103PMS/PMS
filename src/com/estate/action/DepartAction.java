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
	
	
	private List<Department> departList;//������в�����Ϣ
	
	private Department department;
	
	private int id;//��Ŵ�ҳ�洫�����Ĳ���id
	
	private List<User> userList;//��������û���Ϣ
	
	private String[] idStr;//���ҳ�洫������id����
	
	
	
	@Resource(name="iDepartService")//Spring ��תע��
	private IDepartService departService;
	
	
	/**
	 * ���Ե�get��set�ķ���
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
	 * ��ȡ���в���
	 * @return
	 */
	public String getDeptList(){
		//����Service��ķ���
		departList = departService.getDeptList();
		return SUCCESS;
	}
	
	/**
	 * ��ӡ��༭���ţ�����
	 */
	public String departSave(){
		departService.departSave(department);
		return SUCCESS;
	}
	
	/**
	 * ����Id���Ҳ���
	 */
	
	public String findById(){
		userList = departService.userList();
		department = departService.findById(id);
		return SUCCESS;
	}
	
	
	
	/**
	 * ���������ҳ��
	 */
	public String toDepartAdd(){
		//��ȡ�û��б���ҳ����������ѡ�����ʽ���û�ѡ��
		userList = departService.userList();
		return SUCCESS;
	}
	
	/**
	 * ɾ������
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
