//Run functionality when the page is load
window.onload = function(){
    checkResults();
}

checkResults = function(){
	var groups = $('#prode-container .pr-index');
	
	$(groups).each(function(key, value){
		var results = $(value).find('td.results');
		console.log('run')
		$(results).each(function(key, value){
			var result_a = $(value).find('input.team_a_result'),
				result_b = $(value).find('input.team_b_result'),
				result_a_fifa = $(value).find('input.team_a_result_fifa'),
				result_b_fifa = $(value).find('input.team_b_result_fifa');
			
			if( $(result_a_fifa).val() != '' ){
				//Check only the goals
				if( $(result_a).val() == $(result_a_fifa).val() ){
					$(result_a).addClass('equal');
				}else{
					$(result_a).addClass('notequal');
				}
				
				if( $(result_b).val() == $(result_b_fifa).val() ){
					$(result_b).addClass('equal');
				}else{
					$(result_b).addClass('notequal');
				}
				
				//Check Rows with match results
				if( ($(result_a).val() == $(result_a_fifa).val()) && ($(result_b).val() == $(result_b_fifa).val()) ){
					$(value).parents('tr').addClass('success');
				}
				
				if( ($(result_a_fifa).val() > $(result_b_fifa).val()) && ($(result_a).val() > $(result_b).val()) ){
					$(value).parents('tr').addClass('info');
				}
				
				if( ($(result_a_fifa).val() < $(result_b_fifa).val()) && ($(result_a).val() < $(result_b).val()) ){
					$(value).parents('tr').addClass('info');
				}
				
				if( ($(result_a_fifa).val() == $(result_b_fifa).val()) && ($(result_a).val() == $(result_b).val()) ){
					$(value).parents('tr').addClass('info');
				}
			}
		})
	})
}