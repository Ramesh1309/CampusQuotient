package com.CampusQuotient.repo;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.CampusQuotient.POJO.LoginPOJO;
import com.CampusQuotient.POJO.LoginRegisterationEntity;

public interface Repository extends MongoRepository<LoginPOJO, Integer>{

	void save(LoginRegisterationEntity loginreg);
	

}
