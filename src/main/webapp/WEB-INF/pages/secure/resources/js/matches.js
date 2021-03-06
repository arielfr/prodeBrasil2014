//Run functionality when the page is load
window.onload = function(){
	checkGroups();
	checkInputs();
    submitFunctionality();
}

//Check if the groups are complete when the page is load
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
			removePanelType(value, 'panel-success', true);
		}
	});
}

//Check input change for check if the group change is completed. Also verify Error in input
checkInputs = function(){
	var pattern = new RegExp('[0-9]');
	
	//Check group of the input change
	$('#prode-container .pr-registration input').keyup(function(event){
		var panel = $(this).parents('.panel'),
			quantity = $(panel).find('input').length,
			groupsQuant = 0,
			error = false;
		
		//Check for all Inputs
		$(panel).find('input').each(function(key, value){
			var result = $(value).val();
			
			//Counts only the inputs filled
			if( result != '' ){
				//Check if numeric
				if( !pattern.test(result) ){
					error = true;
				}else{
					groupsQuant = groupsQuant + 1;
				}
			}
		});
		
		//Add the color on the panel
		if( quantity == groupsQuant ){
			removePanelType(panel, 'panel-success', true);
		}else{
			if( error ){
				removePanelType(panel, 'panel-danger', false);
			}else{
				removePanelType(panel, 'panel-default', false);
			}
		}
	});
}

//Util Function to remove and add the classes on the panel
removePanelType = function(panel, addType, success){
	$(panel).removeClass('panel-success').removeClass('panel-default').removeClass('panel-danger').addClass(addType);
	
	if( success ){
		$(panel).addClass('group-complete');
	}else{
		$(panel).removeClass('group-complete');
	}
}

submitFunctionality = function(){
	$('#prode-container .btn-container .submit').click(function(event){
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
				url: '/result/submit',
				data: json,
				complete: function(){
					$("html, body").animate({ scrollTop: "0px" });
					
					showMessage('The Match have been save', 'alert-success');
				}
			});
		}
	});
}

//Generate JSON from the register page
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

//Append message on the message div on the page
showMessage = function(message, type){
	$('#prode-container #central-container #messages').children().remove();
	
	//Go To Top
	$("html, body").animate({ scrollTop: "0px" });
	
	//Print Success Message
	$('#prode-container #central-container #messages').append('<div class="alert ' + type + '" style="display: none;">' + message + '</div>');
	
	$('#messages').children().show('slow');
}

//Check for errors on the input texts
lookForErrors = function(){
	var pattern = new RegExp('[0-9]'),
		errorFound = false,
		matchs = $('#prode-container .pr-registration input').length,
		matchsCompleted = 0,
		previousHaveValue = false;

	$('#prode-container .pr-registration input').each(function(key, value){
		var result = $(value).val();
		
		if( previousHaveValue && $(value).hasClass('team_b_result') && result == '' && !errorFound){
			showMessage('You have a math with only one result, please add the other result', 'alert-danger');
			
			errorFound = true;
			
			return false;
		}else{
			if( result != '' ){
				var valid = pattern.test(result);
				
				if( valid == false ){
					showMessage('Only numbers are accepted. Look for the groups marks on red', 'alert-danger');
					
					errorFound = true;
					
					return false;
				}else{
					previousHaveValue = true;
				}
			}else{
				matchsCompleted = matchsCompleted + 1;
				previousHaveValue = false;
			}
			
			if( matchs == matchsCompleted ){
				showMessage('You must complete at least one result', 'alert-warning');
				
				errorFound = true;
				
				return false;
			}
		}
	});
	
	return errorFound;
}