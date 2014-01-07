package com.estate.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.estate.dao.IAmmeterDao;
import com.estate.entity.Ammeter;
import com.estate.service.IAmmeterService;

@Service("iAmmeterService")
public class AmmeterServiceImpl implements IAmmeterService {

	@Resource(name="iAmmeterDao")
	private IAmmeterDao ammeterDao;
	
	public List<Ammeter> ammeterList() {
		return ammeterDao.ammeterList();
	}

	public Ammeter findById(int id) {
		
		return ammeterDao.findById(id);
	}

	public void ammeterSave(Ammeter ammeter) {
		ammeterDao.ammeterSave(ammeter);
		
	}

	public void ammeterDelete(String[] idStr) {
		ammeterDao.ammeterDelete(idStr);
		
	}

}
