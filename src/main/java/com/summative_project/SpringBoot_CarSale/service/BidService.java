package com.summative_project.SpringBoot_CarSale.service;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.summative_project.SpringBoot_CarSale.entity.Car;
import com.summative_project.SpringBoot_CarSale.entity.CarBidding;
import com.summative_project.SpringBoot_CarSale.repo.BidRepository;



@Service
@Transactional
public class BidService {
	@Autowired
	BidRepository repo;


	public CarBidding save(CarBidding carBiding) {		
        return repo.save(carBiding);	
	}

	public List<CarBidding> listAll() {
		return (List<CarBidding>) repo.findAll();
	}

	public List<CarBidding> listBidInfo(Car car) {
		return (List<CarBidding>) repo.findByCarid(car);
	}

}
