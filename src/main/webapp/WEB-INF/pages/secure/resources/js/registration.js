window.onload = function(){
    saveFunctionality();
    checkGroups();
    checkInputs();
}

checkInputs = function(){
	$('#prode-container .pr-registration input').change(function(event){
		var panel = $(this).parents('.panel'),
			quantity = $(panel).find('input').length,
			groupsQuant = 0;
		
		$(panel).find('input').each(function(key, value){
			if( $(value).val() != '' ){
				groupsQuant = groupsQuant + 1;
			}
		});
		
		if( quantity == groupsQuant ){
			$(panel).removeClass('panel-default').addClass('panel-success');
		}else{
			$(panel).removeClass('panel-success').addClass('panel-default');
		}
	});
}

checkGroups = function(){
	$('#prode-container .pr-registration').each(function(key, value){
		var quantity = $(value).find('input').length,
			groupsQuant = 0;
		
		$(value).find('input').each(function(key, value){
			if( $(value).val() != '' ){
				groupsQuant = groupsQuant + 1;
			}
		});
		
		if( quantity == groupsQuant ){
			$(value).removeClass('panel-default').addClass('panel-success');
		}
	});
}

saveFunctionality = function(){
	$('#prode-container .btn-container .save').click(function(event){
		event.preventDefault();
		
		if( !lookForErrors() ){
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
					showMessage('Your results are being saved', 'alert-success');
				}
			});
		}
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


showMessage = function(message, type){
	$('#prode-container #central-container #messages').children().remove();
	
	//Go To Top
	$("html, body").animate({ scrollTop: "0px" });
	
	//Print Success Message
	$('#prode-container #central-container #messages').append('<div class="alert ' + type + '" style="display: none;">' + message + '</div>');
	
	$('#messages').children().show('slow');
}

lookForErrors = function(){
	var pattern = new RegExp('[0-9]'),
		errorFound = false,
		matchs = $('#prode-container .pr-registration input').length,
		matchsCompleted = 0;

	$('#prode-container .pr-registration input').each(function(key, value){
		var result = $(value).val();
		
		if( result != '' ){
			var valid = pattern.test(result);
			
			if( valid == false ){
				console.log("...");
				console.log(result);
				showMessage('Only numbers are accepted', 'alert-danger');
				
				errorFound = true;
				
				return;
			}
		}else{
			matchsCompleted = matchsCompleted + 1;
		}
		
		if( matchs == matchsCompleted ){
			showMessage('You must complete at least one result', 'alert-warning');
			
			errorFound = true;
		}
	});
	
	return errorFound;
}