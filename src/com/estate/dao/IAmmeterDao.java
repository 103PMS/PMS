package com.estate.dao;

import java.util.List;

import com.estate.entity.Ammeter;

public interface IAmmeterDao {

	List<Ammeter> ammeterList();

	Ammeter findById(int id);

	void ammeterSave(Ammeter ammeter);

	void ammeterDelete(String[] idStr);

}
