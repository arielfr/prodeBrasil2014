package com.prode.model.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="results")
public class Result implements Serializable {

	private static final long serialVersionUID = -7033094790173072645L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private Match match;
	
	private int gol_team_a;
	
	private int gol_team_b;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Match getMatch() {
		return match;
	}

	public void setMatch(Match match) {
		this.match = match;
	}

	public int getGol_team_a() {
		return gol_team_a;
	}

	public void setGol_team_a(int gol_team_a) {
		this.gol_team_a = gol_team_a;
	}

	public int getGol_team_b() {
		return gol_team_b;
	}

	public void setGol_team_b(int gol_team_b) {
		this.gol_team_b = gol_team_b;
	}
	
}
