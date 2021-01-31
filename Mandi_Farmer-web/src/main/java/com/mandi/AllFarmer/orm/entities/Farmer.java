package com.mandi.AllFarmer.orm.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity(name = "farmerdetail")
@Table(name = "farmerdetail")
public @Data class Farmer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(unique = true)
	private long mobileNo;

	@Column(unique = true)
	private long aadhaarId;

	private String farmerName;

	private String farmerAddress;

	private String gender;

	private String password;

}
