package com.wpg.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wpg.dao.DataDao;
import com.wpg.pojo.Data;

@Service
public class DataService {
	
	@Autowired
	private DataDao dataDao;
	
	public  List<Data> findAllData(String tablename) {
		List list=dataDao.findAllData(tablename);
		return list;
	}
	public void addData(String tablename,Data data) {
		dataDao.addData(tablename,data);
	}
	public void deleteDataByName(String tablename,String name) {
		dataDao.deleteDataByName(tablename,name);
	}
	
	public Data findAllDataById(String tablename,int id) {
		Data data=dataDao.findAllDataById(tablename,id);
		return data;
	}
	public void updateData(String tablename,Data data) {
		dataDao.updateData(tablename,data);
	}
	
	public int findMaxMark(String tablename) {
		int i =dataDao.findMaxMark(tablename);
		return i;
	}
}
