package com.wpg.handler;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wpg.pojo.Data;
import com.wpg.service.DataService;

@Controller
public class DataHandler {

	@Autowired
	private DataService dataService;
	
	@RequestMapping("init")
	public String init(ModelMap modelMap,String name) throws UnsupportedEncodingException {
		List list=dataService.findAllData(name);
		modelMap.addAttribute("list", list);
		String tablename=new String(name.getBytes(), "UTF-8");
		modelMap.addAttribute("tablename", tablename);
		return "content";
	}
	
	@RequestMapping("add")
	public String content(ModelMap modelMap,String tablename) {
		modelMap.addAttribute("tablename", tablename);
		return "add";
	}
	
	@RequestMapping("save")
	public String add(Data data,String tablenames) {
		if(data!=null) {
			int i=dataService.findMaxMark(tablenames);
			data.setMark(i+1);
			dataService.addData(tablenames,data);
			return "forward:index.jsp";
		}
		return "forward:index.jsp";
	}
	@ResponseBody
	@RequestMapping("delete")
	public int delete(String name,String tablename) {
		dataService.deleteDataByName(tablename,name);
		return 1;
	}
	@RequestMapping("update")
	public String update(int id,String tablename,ModelMap modelMap) {
		Data data=dataService.findAllDataById(tablename,id);
		modelMap.addAttribute("data1",data);
		modelMap.addAttribute("tablename", tablename);
		return "update";
	}
	
	@RequestMapping("save1")
	public String save1(Data data,String tablename) {
		dataService.updateData(tablename,data);
		return "forward:index.jsp";
	}
}
