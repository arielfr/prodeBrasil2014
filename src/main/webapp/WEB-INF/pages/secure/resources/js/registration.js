window.onload = function(){
    saveFunctionality();
}

saveFunctionality = function(){
	$('#prode-container .btn-container .save').click(function(event){
		event.preventDefault();
		
		var json = getJson();
		
		$.ajax({
		    headers: { 
		        'Accept': 'application/json',
		        'Content-Type': 'application/json' 
		    },
			type: 'POST',
			dataType: 'json',
			url: '/prode/save/' + $('#prode-container .country').val() + '/' + $('#prode-container .sector').val(),
			data: json,
			complete: function(){
				$('#prode-container #central-container #messages').children().remove();
				
				//Go To Top
				$("html, body").animate({ scrollTop: "0px" });
				
				//Print Success Message
				$('#prode-container #central-container #messages').append('<div class="alert alert-success" style="display: none;">Your results are being saved</div>');
				
				$('#messages').children().show('slow');
			}
		});
	});
}

getJson = function(){
	var json = "[",
		groups = $('#prode-container .pr-registration'),
		iterator = 0;

	groups.each(function(key, value){
		var groupId = $(value).find('.panel-heading').attr('group'),
			matches = $(value).find('.match_row');
		
		$(matches).each(function(key, value){
			var matchId = $(value).attr('match'),
				teamAId = $(value).find('.fteam_a').attr('team_a'),
				teamBId = $(value).find('.fteam_b').attr('team_b'),
				teamA_Result = $(value).find('.team_a_result').val() ? $(value).find('.team_a_result').val() : '"-1"',
				teamB_Result = $(value).find('.team_b_result').val() ? $(value).find('.team_b_result').val() : '"-1"';
	
			if( iterator == 0 ){
				json = json.concat('{"groupId":' + groupId);
			}else{
				json = json.concat(', {"groupId":' + groupId);
			}
			
			json = json.concat(', "matchId":' + matchId);
			json = json.concat(', "teamAId":' + teamAId);
			json = json.concat(', "teamBId":' + teamBId);
			json = json.concat(', "teamA_Result":' + teamA_Result);
			json = json.concat(', "teamB_Result":' + teamB_Result);
			
			json = json.concat('}');
			
			iterator = iterator + 1;
		});
		
		
	});
	
	json = json.concat(']');
	
	return json;
}