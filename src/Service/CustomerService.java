package Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Customer;

public class CustomerService {
	
	private Map<String, Customer> customerMap;
	
	public CustomerService() {
		customerMap = new HashMap<String, Customer>();
		
		addCustomer(new Customer("id001","001","alice"));
		addCustomer(new Customer("id002","002","bob"));
		addCustomer(new Customer("id003","003","charlie"));
		addCustomer(new Customer("id004","004","david"));
		addCustomer(new Customer("id005","005","trudy"));
		
	}

	private void addCustomer(Customer customer) {
		
		customerMap.put(customer.getId(), customer);
		
	}
	
	public Customer findCustomer(String id) {
		if(id != null)
			return (customerMap.get(id.toLowerCase()));
		else
			return null;
	}	
}
