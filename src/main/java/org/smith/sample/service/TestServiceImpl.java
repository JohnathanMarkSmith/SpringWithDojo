package org.smith.sample.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.smith.sample.domain.Customer;
import org.springframework.stereotype.Service;


@Service
public class TestServiceImpl implements TestService {

	private Log log = LogFactory.getLog(TestServiceImpl.class);

	public void saveCustomer(Customer c) {
		log.debug("Saving:" + c.toString());
	}
}
