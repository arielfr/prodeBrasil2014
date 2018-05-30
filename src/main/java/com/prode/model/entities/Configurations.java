package com.prode.model.entities;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name="configurations")
public class Configurations implements Serializable{
	private static final long serialVersionUID = 1L;

	@Id
	private String key;

	boolean value;

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public boolean isValue() {
		return value;
	}

	public void setValue(boolean value) {
		this.value = value;
	}
}
