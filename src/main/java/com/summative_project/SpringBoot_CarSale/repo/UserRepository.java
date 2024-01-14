package com.summative_project.SpringBoot_CarSale.repo;

import java.util.Set;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.summative_project.SpringBoot_CarSale.entity.Role;
import com.summative_project.SpringBoot_CarSale.entity.User;


@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUserName(String name);
    User findBypassword(String password);
}
