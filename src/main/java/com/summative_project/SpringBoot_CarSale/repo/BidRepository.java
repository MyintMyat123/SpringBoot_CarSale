package com.summative_project.SpringBoot_CarSale.repo;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.summative_project.SpringBoot_CarSale.entity.Car;
import com.summative_project.SpringBoot_CarSale.entity.CarBidding;

import java.util.List;
import java.util.Set;


@Repository
public interface BidRepository extends JpaRepository<CarBidding, Long> {

	//can develop - Custom query & custom method 
	@Query( "select b from CarBidding b where b.car in :carid" )
	List<CarBidding> findByCarid(@Param("carid") Car car);
}
