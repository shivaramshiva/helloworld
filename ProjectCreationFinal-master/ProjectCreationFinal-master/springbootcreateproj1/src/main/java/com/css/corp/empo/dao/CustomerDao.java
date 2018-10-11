package com.css.corp.empo.dao;

import java.util.List;

import com.css.corp.empo.model.Customer;

public interface CustomerDao {
	public List<Customer> getAllCustomers() ;

	public Customer getCustomer(int s_no) ;
	

	public Customer addCustomer(Customer customer);

	public void updateCustomer(Customer customer) ;

	public void deleteCustomer(int s_no) ;
}
