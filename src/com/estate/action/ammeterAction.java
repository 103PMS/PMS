package com.estate.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.estate.entity.Ammeter;
import com.estate.service.IAmmeterService;
import com.opensymphony.xwork2.ActionSupport;

@Controller("ammeterAction")
public class ammeterAction extends ActionSupport {
	
	 private List<Ammeter> ammeterList;
	 private int id;
	 private Ammeter ammeter;
	 
	 private String[] idStr;
	 
	 
	
	 @Resource(name="iAmmeterService")
	 private IAmmeterService ammeterService;
	 
	
	
	public List<Ammeter> getAmmeterList() {
		return ammeterList;
	}

	public void setAmmeterList(List<Ammeter> ammeterList) {
		this.ammeterList = ammeterList;
	}
	
	


   public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Ammeter getAmmeter() {
		return ammeter;
	}

	public void setAmmeter(Ammeter ammeter) {
		this.ammeter = ammeter;
	}
	

	public String[] getIdStr() {
		return idStr;
	}

	public void setIdStr(String[] idStr) {
		this.idStr = idStr;
	}

	/**
	 * 电表列表
	 * @return
	 */
	public String ammeterList(){
		
		ammeterList = ammeterService.ammeterList();
		return SUCCESS;
		
	}
	
	/**
	 * 根据id查找
	 * @return
	 */
	public String findById(){
		ammeter = ammeterService.findById(id);
		return SUCCESS;
	}
	
	
	
	/**
	 * 保存
	 */
	
	 public String ammeterSave(){
		 ammeterService.ammeterSave(ammeter);
		 return SUCCESS;
		 
	 }
	 
	 
	/**
	 * 删除
	 */
	
	 public String ammeterDelete(){
		 ammeterService.ammeterDelete(idStr);
		 return SUCCESS;
	 }
	
	
	
	
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}

}
