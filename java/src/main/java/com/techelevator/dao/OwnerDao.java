package com.techelevator.dao;


import com.techelevator.model.Owner;
import com.techelevator.model.RegisterOwnerDto;

public interface OwnerDao {

    Owner createOwner(RegisterOwnerDto owner);


}