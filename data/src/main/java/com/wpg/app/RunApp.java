package com.wpg.app;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
//配置包扫描器，启动注解
//默认情况下@SpringBootApplication注解会扫描启动类所在的包，当注解所在类与启动类不在同一个包时，则必须要配置@ComponentScan注解
//@ComponentScan(basePackages={"com.igeek.handler","com.igeek.config"})
@ComponentScan(basePackages="com.wpg")
//@ServletComponentScan注解用于扫描web组件，将Servlet、Filter、Listener注册至SpringBoot的内置web容器中
//@ServletComponentScan(basePackages={"com.igeek.web.servlet","com.igeek.web.filter"})
@ServletComponentScan(basePackages="com.wpg.handler")
//@MapperScan注解用于扫描MyBatis的DAO接口所在的包，用于生成DAO的实例对象
@MapperScan(basePackages="com.wpg.dao")
public class RunApp {
	public static void main(String[] args) {
		//启动SpringBoot应用
		SpringApplication.run(RunApp.class, args);
	}
}
