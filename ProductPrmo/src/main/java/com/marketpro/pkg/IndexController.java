package com.marketpro.pkg;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.marketpro.pkg.dao.ImageDao;
import com.marketpro.pkg.dao.marketDao;


@Controller
@SessionAttributes("name")

public class IndexController {
	
	//@Autowired
	//marketDao updb; 
	
  //  user user;
    
			
	@RequestMapping("/")
	public String home()
	{
		System.out.print("Inside the home index control");
		return "index";
	}

	@RequestMapping("main")
	public String main()
	{
		System.out.print("Inside the home index control");
		return "validate_usr";
	}
	
	@RequestMapping("Login1")
	public String signin()
	{
		System.out.print("Inside the Login1 index control");
		return "Login";
	}
	
	@RequestMapping("validate_usr")
     //0 public String validate_usr(@RequestParam("name") String name, @RequestParam("password") String pwd, user user )
      public String validate_usr(@ModelAttribute("user") user user, ModelMap model)
	{
		 //0 System.out.print("name= "+ name);
		 //0 System.out.print("pwd= "+ pwd);
	
		 System.out.print("name= "+ user.name);
		 System.out.print("pwd= "+ user.password);
		model.put("name",user.name);
		//1 marketDao updb = new marketDao();
		//1 updb.updateDB();
		 //2 user.setName(name);
		 //2 user.setPassword(pwd);
		//2 updb.updateDB(user);
		
		 
				
		 
		 DBConnection DBcon = new DBConnection(); 
		 //0 if (DBcon.check(name, pwd))
		 if (DBcon.check(user.name, user.password))
		 {
			System.out.print("User is validted -- GOOD");
			return "validate_usr";
		 }
		 
		 System.out.print("User is invalidted --XXX ");
		 return null;
		
	}
	
	@RequestMapping("uploadfile")
	public String uploadfile(@RequestParam("image") String filenm ,ModelMap model) 
	{
		
		 System.out.print("inside the Upload Image Index controller"  );
		 System.out.println("inside the Upload Image Index controller  Name---> " +model.get("name") );
		 
		ImageDao DBimage = new ImageDao(); 
		 if (DBimage.upload(filenm,(String) model.get("name")))
		 {
			 System.out.print("Sucess....updated imgae " );
			 return "validate_usr";
		 }
		 
			 return "validate_usr";
	}
	
		
}
