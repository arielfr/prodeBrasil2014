package com.prode.dto;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class UISaveFixtureDTO implements Serializable{
	private static final long serialVersionUID = 1L;

	Long groupId;
	
	Long matchId;
	
	Long teamAId;
	
	Long teamBId;
	
	int teamA_Result;
	
	int teamB_Result;

	public Long getGroupId() {
		return groupId;
	}

	public void setGroupId(Long groupId) {
		this.groupId = groupId;
	}

	public Long getMatchId() {
		return matchId;
	}

	public void setMatchId(Long matchId) {
		this.matchId = matchId;
	}

	public Long getTeamAId() {
		return teamAId;
	}

	public void setTeamAId(Long teamAId) {
		this.teamAId = teamAId;
	}

	public Long getTeamBId() {
		return teamBId;
	}

	public void setTeamBId(Long teamBId) {
		this.teamBId = teamBId;
	}

	public int getTeamA_Result() {
		return teamA_Result;
	}

	public void setTeamA_Result(int teamA_Result) {
		this.teamA_Result = teamA_Result;
	}

	public int getTeamB_Result() {
		return teamB_Result;
	}

	public void setTeamB_Result(int teamB_Result) {
		this.teamB_Result = teamB_Result;
	}
}
