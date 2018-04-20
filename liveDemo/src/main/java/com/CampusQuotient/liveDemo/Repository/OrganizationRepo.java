package com.CampusQuotient.liveDemo.Repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;


import com.CampusQuotient.liveDemo.EntityClass.LoginPOJO;
@Repository
public interface OrganizationRepo extends MongoRepository<LoginPOJO, String>{
	public LoginPOJO findByUsername(String username);
	public LoginPOJO findByPassword(String password);
}
