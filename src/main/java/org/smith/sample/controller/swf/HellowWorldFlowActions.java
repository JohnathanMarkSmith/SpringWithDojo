package org.smith.sample.controller.swf;

import static org.apache.log4j.Logger.getLogger;

import java.util.LinkedHashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.smith.sample.domain.Customer;
import org.smith.sample.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

@Component
public class HellowWorldFlowActions {

	@Autowired
	private TestService testService;

	private static final Logger LOGGER = getLogger(HellowWorldFlowActions.class);

	public Map<String, String>  addDrop(Customer customer) {
		
		LinkedHashMap<String, String> selectableList = new LinkedHashMap<String, String>();
		selectableList.put("ITEM1","ITEM1");
		selectableList.put("ITEM2","ITEM2");
		
		return selectableList;
	}
	
	public void addCustomer(Customer customer) {
		getUser();
		testService.saveCustomer(customer);
	}
	
	String getUser()
	{
		LOGGER.debug("getAuthentication().getName():"
				+ SecurityContextHolder.getContext().getAuthentication()
						.getName());
		String username;
		Object obj = SecurityContextHolder.getContext().getAuthentication()
				.getPrincipal();

		if (obj instanceof UserDetails)
		{
			username = ((UserDetails) obj).getUsername();
		} else
		{
			username = obj.toString();
		}
		LOGGER.debug("getUser:" + username);

		return username;
	}
}
