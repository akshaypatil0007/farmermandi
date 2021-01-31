package com.mandi.AllFarmer.orm.entities;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import lombok.Data;

@Entity(name = "addcrop")
@Table(name = "addcrop")
public @Data class AddCrop implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private long mobileno;
	private String cropName;
	private long msp;
	private long quantity;
	private String uploadDate;
	private String harvestDate;
	private String village;
	private String city;
	private long pincode;

	@Lob
	@Basic(fetch = FetchType.LAZY)
	@Column(columnDefinition = "LONGBLOB ")
	private byte[] image;

}
