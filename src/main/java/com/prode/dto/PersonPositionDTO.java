package com.prode.dto;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.prode.model.entities.Person;

@JsonIgnoreProperties(ignoreUnknown = true)
public class PersonPositionDTO implements Serializable{
	private static final long serialVersionUID = 1L;

	Person person;
	
	int position;

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public int getPosition() {
		return position;
	}

	public void setPosition(int position) {
		this.position = position;
	}
}
