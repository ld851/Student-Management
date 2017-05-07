package com.test.filter;

import java.io.IOException;

import javax.servlet.*;

public class CharacterEncoding implements Filter { 
	  
	 private FilterConfig config ; 
	 String encoding = null; 
	   
	 public void destroy() { 
	  config = null; 
	 } 
	  
	 public void doFilter(ServletRequest request, ServletResponse response, 
	   FilterChain chain) throws IOException, ServletException { 
	  request.setCharacterEncoding(encoding); 
	  chain.doFilter(request, response); 
	 } 
	  
	 public void init(FilterConfig config) throws ServletException { 
	  this.config = config; 
	  //获取配置参数 
	  String str = config.getInitParameter("encoding"); 
	  if(str!=null){ 
	   encoding = str; 
	  } 
	 } 
	  
	} 
