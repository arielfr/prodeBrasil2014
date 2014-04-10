package com.prode.model.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Person implements Serializable{
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String name;
	
	private String email;
	
	private String photo;
	
	@ManyToOne
	@JoinColumn(name = "id_sector", referencedColumnName = "id")
	private Sector sector;
	
	@ManyToOne
	@JoinColumn(name = "id_sector", referencedColumnName = "id")
	private Country country;
	
	boolean register;
	
	boolean saved;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isRegister() {
		return register;
	}

	public void setRegister(boolean register) {
		this.register = register;
	}

	public boolean isSaved() {
		return saved;
	}

	public void setSaved(boolean saved) {
		this.saved = saved;
	}

	protected String getPhoto() {
		return photo;
	}

	protected void setPhoto(String photo) {
		this.photo = photo;
	}

	protected Sector getSector() {
		return sector;
	}

	protected void setSector(Sector sector) {
		this.sector = sector;
	}

	protected Country getCountry() {
		return country;
	}

	protected void setCountry(Country country) {
		this.country = country;
	}
}
