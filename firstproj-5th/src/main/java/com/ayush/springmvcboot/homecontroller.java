package com.ayush.springmvcboot;


import java.io.IOException;
import java.io.PrintWriter;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class homecontroller {
	
	ApplicationContext ctx=new ClassPathXmlApplicationContext("main.xml");
	User obj= (User) ctx.getBean("userdef");
	
	private String username;
	private String password;
	private String location ;
	private String g;
	@RequestMapping("/")
	public String home()
	{
		return "Login.jsp";
	}
	
	@PostMapping("login")
	public ModelAndView loginl(HttpServletRequest req, HttpServletResponse res)
	{
		 username=(req.getParameter("username").toString());
		 password=(req.getParameter("password").toString());
		
		ModelAndView mv= new ModelAndView();
		
		
//		User obj= (User) ctx.getBean("userdef");
		if(obj.checkUsr(obj.getUsrdb(), username, password))
		{
			mv.setViewName("Index.jsp");
			return mv;
		}
		else
		{
			mv.setViewName("Login.jsp");
			String wrongIP="Invalid username or password";
			mv.addObject("wrongIP",wrongIP);
			return mv;
			
		}
	}
	@PostMapping("signup")
	public String SignupS(HttpServletRequest req, HttpServletResponse res)
	{
		String username=(req.getParameter("email").toString());
		String password=(req.getParameter("password").toString());
		obj.addUsr(obj.getUsrdb(), username, password);
		return "Login.jsp";
	}
	
	
	
	
	@RequestMapping("lochotel")
	public ModelAndView hotel(HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		location =(req.getParameter("loktion")).toString();  
		ModelAndView mv= new ModelAndView();
		mv.setViewName("loc1.jsp");
		mv.addObject("j",location);
		return mv;
	}
	@RequestMapping("/loc")
	public ModelAndView loc(HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		
		ModelAndView mv= new ModelAndView();
		mv.setViewName("loc1.jsp");
		mv.addObject("j",location);
		return mv;
	}
	
	@RequestMapping("/ordered")
	public ModelAndView order (HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		
		ModelAndView mv= new ModelAndView();
		mv.setViewName("complete.jsp");
		mv.addObject("j",location);
		return mv;
	}

	
	@RequestMapping("/hotels")
	public ModelAndView hotelselect(HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		g=(req.getParameter("whichhotel")).toString();
		ModelAndView mvnn= new ModelAndView();
//		@SuppressWarnings("resource")
//		ApplicationContext ctx=new ClassPathXmlApplicationContext("main.xml");
		mvnn.setViewName("hotel.jsp");
		Hotel obj=(Hotel) ctx.getBean("hotel");
		mvnn.addObject("g",g);
		mvnn.addObject("hotl",obj);
//		System.out.println(obj.toString());
		return mvnn;	
	}
	
	@PostMapping("/ordered") // throws IOException
	public ModelAndView orderDetails(HttpServletRequest req, HttpServletResponse res)  
	  {
	    int orderAmout = Integer.parseInt(req.getParameter("total"));
	    long Pno=Long.parseLong(req.getParameter("phone"));
	    String addd= req.getParameter("address").toString();
	    ModelAndView mnn=new ModelAndView();
	    int orderAmt=(int) (orderAmout*1.15);
	    mnn.setViewName("complete.jsp");
	    mnn.addObject("orderamt", orderAmt);
	    mnn.addObject("Pno", Pno);
	    mnn.addObject("address", addd);
	    
		return mnn;
 		
	  }
}
	
	


