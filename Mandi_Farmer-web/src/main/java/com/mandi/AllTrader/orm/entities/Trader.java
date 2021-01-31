package com.mandi.AllTrader.orm.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity(name = "traderdetail")
@Table(name = "traderdetail")
public @Data class Trader {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(unique = true)
	private long mobileNo;

	@Column(unique = true)
	private long aadhaarId;

	private String traderName;

	private String traderAddress;

	private String gender;

	private String password;

}
