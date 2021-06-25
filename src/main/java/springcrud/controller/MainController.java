package springcrud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import springcrud.dao.CustomerDao;
import springcrud.model.Customer;

@Controller
public class MainController {
	
	@Autowired
	private CustomerDao customerDao;
	
	@RequestMapping("/")
	 public String home(Model m) {
		 
		List<Customer> customers=customerDao.getCustomers();
		m.addAttribute("customers", customers);
		 return "index";
	 }
	
	//add customer form
	@RequestMapping("/add-customer")
	public String addCustomer(Model m) {
		
		m.addAttribute("title", "Add Customer");
		return "add-form";
	}
	
	//handle add customer form
	
	@RequestMapping(value="/handle-customer", method=RequestMethod.POST)
	public RedirectView handleCustomer(@ModelAttribute Customer customer, HttpServletRequest request) {
		System.out.println(customer);
		customerDao.createCustomer(customer);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request .getContextPath() +"/");
		return redirectView;
		
	}
	
	//delete handler
	@RequestMapping("/delete/{customerId}")
	public RedirectView deleteCustomer(@PathVariable("customerId") int customerId, HttpServletRequest request) {
		this.customerDao.deleteCustomer(customerId);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request .getContextPath() +"/");
		return redirectView;
	}
	
	//update handler
	@RequestMapping("/update/{customerId}")
	public String updateForm(@PathVariable("customerId") int cid, Model model) 
	{
		Customer customer=this.customerDao.getCustomer(cid);
		model.addAttribute("customer", customer);
		return "update-form.jsp";
	}

}
