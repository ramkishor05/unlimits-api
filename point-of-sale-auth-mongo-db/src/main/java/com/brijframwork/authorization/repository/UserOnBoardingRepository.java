package com.brijframwork.authorization.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.brijframwork.authorization.model.menus.EORoleMenuItem;
import com.brijframwork.authorization.model.onboarding.EOUserOnBoarding;

@Repository
@Transactional
public interface UserOnBoardingRepository  extends MongoRepository<EOUserOnBoarding, Long>{

	void deleteByRoleMenuItem(EORoleMenuItem eoRoleMenuItem);

}
