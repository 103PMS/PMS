package com.estate.service;

import java.util.List;

import com.estate.entity.Ammeter;

public interface IAmmeterService {

	List<Ammeter> ammeterList();

	Ammeter findById(int id);

	void ammeterSave(Ammeter ammeter);

	void ammeterDelete(String[] idStr);

}
