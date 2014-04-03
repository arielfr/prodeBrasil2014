package com.prode.model.entities;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="matches")
public class Match implements Serializable {

	private static final long serialVersionUID = 8218388554618938566L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(name = "date_match")
	private Date dateMatch;
	
	@ManyToOne
	@JoinColumn(name = "id_city", referencedColumnName = "id")
	private City city;
	
	@ManyToOne
	@JoinColumn(name = "id_group", referencedColumnName = "id")
	private Group group;
	
	@ManyToOne
	@JoinColumn(name = "id_team_a", referencedColumnName = "id")
	private Team teamA;
	
	@ManyToOne
	@JoinColumn(name = "id_team_b", referencedColumnName = "id")
	private Team teamB;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getDateMatch() {
		return dateMatch;
	}

	public void setDateMatch(Date dateMatch) {
		this.dateMatch = dateMatch;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public Group getGroup() {
		return group;
	}

	public void setGroup(Group group) {
		this.group = group;
	}

	public Team getTeamA() {
		return teamA;
	}

	public void setTeamA(Team teamA) {
		this.teamA = teamA;
	}

	public Team getTeamB() {
		return teamB;
	}

	public void setTeamB(Team teamB) {
		this.teamB = teamB;
	}
}
