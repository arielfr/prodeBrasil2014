package com.prode.model.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Type;
import org.joda.time.LocalDateTime;

@Entity
@Table(name="matches")
public class Match implements Serializable {

	private static final long serialVersionUID = 8218388554618938566L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "date_match")
	@Type(type = "org.jadira.usertype.dateandtime.joda.PersistentLocalDateTime")
	private LocalDateTime dateMatch;
	
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
	
	@Transient
	List<Prode> prode;
	
	@Transient
	List<Result> result;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public LocalDateTime getDateMatch() {
		return dateMatch;
	}

	public void setDateMatch(LocalDateTime dateMatch) {
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

	public List<Prode> getProde() {
		return prode;
	}

	public void setProde(List<Prode> prode) {
		this.prode = prode;
	}

	public List<Result> getResult() {
		return result;
	}

	public void setResult(List<Result> result) {
		this.result = result;
	}
}
