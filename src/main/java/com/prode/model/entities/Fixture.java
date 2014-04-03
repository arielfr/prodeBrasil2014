package com.prode.model.entities;

import java.io.Serializable;
import java.security.Timestamp;
import java.util.Date;

import javax.persistence.Entity;

@Entity
public class Fixture implements Serializable{
	private static final long serialVersionUID = 1L;

	private Long id;
	
	private Date dateMatch;
	
	private Timestamp timeMatch;
	
	private String cityName;
	
	private String groupName;
	
	private String teamA;
	
	private String flagA;
	
	private String teamB;
	
	private String flagB;
}
