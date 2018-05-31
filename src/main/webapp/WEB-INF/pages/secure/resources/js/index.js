//Run functionality when the page is load
window.onload = function(){
    checkResults();
}

checkResults = function(){
	var groups = $('#prode-container .pr-index');

	$(groups).each(function(key, value){
		var results = $(value).find('td.results'),
			puntos = 0;

		$(results).each(function(key, value){
			var result_a = $(value).find('input.team_a_result'),
				result_b = $(value).find('input.team_b_result'),
				result_a_fifa = $(value).find('input.team_a_result_fifa'),
				result_b_fifa = $(value).find('input.team_b_result_fifa'),
				partido = false,
				pronostico = false;
				golCorrecto = false;

			if( $(result_a_fifa).val() != '' && $(result_a).length > 0 ){
				//Check only the goals
				if( $(result_a).val() == $(result_a_fifa).val() ){
					$(result_a).addClass('equal');

					golCorrecto = true;
				}else{
					$(result_a).addClass('notequal');
				}

				if( $(result_b).val() == $(result_b_fifa).val() ){
					$(result_b).addClass('equal');

					golCorrecto = true;
				}else{
					$(result_b).addClass('notequal');
				}

				//Check Rows with match results
				if( ($(result_a).val() == $(result_a_fifa).val()) && ($(result_b).val() == $(result_b_fifa).val()) ){
					$(value).parents('tr').addClass('success');

					partido = true;
				}

				if( !partido ){
					if( ($(result_a_fifa).val() > $(result_b_fifa).val()) && ($(result_a).val() > $(result_b).val()) ){
						$(value).parents('tr').addClass('info');

						pronostico = true;
					}

					if( ($(result_a_fifa).val() < $(result_b_fifa).val()) && ($(result_a).val() < $(result_b).val()) ){
						$(value).parents('tr').addClass('info');

						pronostico = true;
					}

					if( ($(result_a_fifa).val() == $(result_b_fifa).val()) && ($(result_a).val() == $(result_b).val()) ){
						$(value).parents('tr').addClass('info');

						pronostico = true;
					}
				}

				//Calculo de puntos
				if( partido == true ){
					puntos = puntos + 5;
				}else if( pronostico == true && golCorrecto == true ){
					puntos = puntos + 3;
				}else if( pronostico == true ){
					puntos = puntos + 2;
				}else if( golCorrecto == true ){
					puntos = puntos + 1;
				}
			}
		});

		$(value).find('.panel-heading').append('<div class="points">Points ' + puntos + '</div>')
	})
}
