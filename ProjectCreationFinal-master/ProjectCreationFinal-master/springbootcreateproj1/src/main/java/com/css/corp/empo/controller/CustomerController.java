package com.css.corp.empo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.css.corp.empo.model.Customer;
import com.css.corp.empo.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	CustomerService customerService;

	@RequestMapping(value = "/getAllProjects", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getAllCustomers(Model model) {

		List<Customer> listOfCustomers = customerService.getAllCustomers();
		model.addAttribute("customer", new Customer());
		model.addAttribute("listOfCustomers", listOfCustomers);
		return "customerDetails2";
	}
	@RequestMapping(value = "/getAllProjects1", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getAllCustomers1(Model model) {

		List<Customer> listOfCustomers = customerService.getAllCustomers();
		model.addAttribute("customer", new Customer());
		model.addAttribute("listOfCustomers", listOfCustomers);
		return "customerDetails";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET, headers = "Accept=application/json")
	public String goToHomePage() {
		return "index";
	}
	@RequestMapping(value = "/projectshome", method = RequestMethod.GET, headers = "Accept=application/json")
	public String goToHomePage2() {
		return "Project";
	}
	@RequestMapping(value = "/underconstruction", method = RequestMethod.GET, headers = "Accept=application/json")
	public String goToHomePage1() {
		return "UnderCons";
	}
	@RequestMapping(value = "/getCustomer/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Customer getCustomerById(@PathVariable int s_no) {
		return customerService.getCustomer(s_no);
	}

	@RequestMapping(value = "/addCustomer", method = RequestMethod.POST, headers = "Accept=application/json")
	public String addCustomer(@ModelAttribute("customer") Customer customer) {
		if (customer.getS_no() == 0) {
			customerService.addCustomer(customer);
		} else {
			customerService.updateCustomer(customer);
		}

		return "redirect:/getAllProjects";
	}

	@RequestMapping(value = "/updateCustomer", method = RequestMethod.GET, headers = "Accept=application/json")
	public String updateCustomer(@RequestParam("s_no") int s_no, Model model) {
		model.addAttribute("customer", this.customerService.getCustomer(s_no));
		model.addAttribute("listOfCustomers", this.customerService.getAllCustomers());
		return "customerDetails";
	}

	@RequestMapping(value = "/updateCustomer/{s_no}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String updateCustomer1(@PathVariable("s_no") int s_no, Model model) {
		model.addAttribute("customer", this.customerService.getCustomer(s_no));
		model.addAttribute("listOfCustomers", this.customerService.getAllCustomers());
		return "customerDetails";
	}

	@RequestMapping(value = "/deleteCustomer/{s_no}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String deleteCustomer(@PathVariable("s_no") int s_no) {
		customerService.deleteCustomer(s_no);
		return "redirect:/getAllProjects";

	}
}
