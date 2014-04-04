var json = "{",
	groups = $('#prode-container .pr-registration'),
	iterator = 0;

groups.each(function(key, value){
	var groupId = $(value).find('.panel-heading').attr('group'),
		matches = $(value).find('.match_row');

	if( iterator == 0 ){
		json = json.concat('"groupId":' + groupId);
	}else{
		json = json.concat('}, {"groupId":' + groupId);
	}

	$(matches).each(function(key, value){
		var matchId = $(value).attr('match'),
			teamAId = $(value).find('.fteam_a').attr('team_a'),
			teamBId = $(value).find('.fteam_b').attr('team_b'),
			teamA_Result = $(value).find('.team_a_result').val(),
			teamB_Result = $(value).find('.team_b_result').val();

		json = json.concat(', "matchId":' + matchId);
		json = json.concat(', "teamAId":' + teamAId);
		json = json.concat(', "teamBId":' + teamBId);
		json = json.concat(', "teamA_Result":' + teamA_Result);
		json = json.concat(', "teamB_Result":' + teamB_Result);
	});
	
	iterator = iterator + 1;
});

json = json.concat('}');