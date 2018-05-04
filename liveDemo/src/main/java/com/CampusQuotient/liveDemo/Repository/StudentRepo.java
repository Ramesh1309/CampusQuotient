package com.CampusQuotient.liveDemo.Repository;

import java.io.Serializable;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;
import com.CampusQuotient.liveDemo.EntityClass.StudentRegisteration;
@Repository
public interface StudentRepo extends MongoRepository<StudentRegisteration, Serializable>{
	

}
