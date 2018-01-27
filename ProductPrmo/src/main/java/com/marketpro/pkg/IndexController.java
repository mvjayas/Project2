package com.marketpro.pkg;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.marketpro.pkg.dao.marketDao;

@Controller
public class IndexController {
	@Autowired
	marketDao updb; 
	
	//user user;
	
	@RequestMapping("/")
	public String home()
	{
		return "index.jsp";
	}
	
	@RequestMapping("Login")
	public String signin()
	{
		return "Login.jsp";
	}
	
	@RequestMapping("/validate_usr")
     public String validate_usr(@RequestParam("name") String name, @RequestParam("password") String pwd )
	 //2 public String validate_usr(@ModelAttribute("user") user user)
	{
		 System.out.print("name= "+ name);
		 System.out.print("pwd= "+ pwd);

		//1 marketDao updb = new marketDao();
		//1 updb.updateDB();
		//1 user = new user(name,pwd,null);
		//2 updb.updateDB(user);
		
		 DBConnection DBcon = new DBConnection(); 
		 if (DBcon.check(name, pwd))
		 {
			System.out.print("User is validted -- GOOD");
			return "launch_product.jsp";
		 }
		 
		 System.out.print("User is invalidted --XXX ");
		 return null;
		
	}
}
