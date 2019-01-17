package com.wpg.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wpg.pojo.Data;

public interface DataDao {
	public List<Data> findAllData(@Param(value="tablename")String tablename);
	public void addData(@Param(value="tablename")String tablename,@Param(value="Data")Data data);
	public void deleteDataByName(@Param(value="tablename")String tablename,@Param(value="name")String name);
	public Data findAllDataById(@Param(value="tablename")String tablename,@Param(value="id")int id);
	public void updateData(@Param(value="tablename")String tablename,@Param(value="Data")Data data);
	public int findMaxMark(@Param(value="tablename")String tablename);
}
