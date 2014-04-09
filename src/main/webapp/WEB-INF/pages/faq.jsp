<html>
	<head>
		<jsp:include page="secure/includes/header.jsp" />
	</head>
	<body id="prode-container">
		<jsp:include page="secure/includes/menu-bar.jsp" />
		<div id="central-container">
		
			<div class="oe-header">
				<span class="blue">2014 FIFA World Cup Brazil</span> <span class="green subtitle">FAQ</span>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-body">

				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> Scores </a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">


								<table class="table table-striped">
									<thead>
										<tr>
											<th>#</th>
											<th>Rule</th>
											<th>Example</th>
											<th>Score</th>
										</tr>
									</thead>
								
									<tbody>
										<tr>
											<td> 1 </td>
											<td> acert�s ELV y los goles convertidos </td>
											<td> 5 puntos </td>
											<td> Ejemplo: Pronostico del partido 2-1 Resultado Real: 2-1 2 </td>
										</tr>
									</tbody>
								</table>
									Los puntos ser�n calculados en base al siguiente
										criterio: 1. Si acert�s ELV y los goles convertidos: 5 puntos
										Ejemplo: Pronostico del partido 2-1 Resultado Real: 2-1 2. Si
										acert�s ELV y la cantidad de goles de s�lo 1 selecci�n: 3
										puntos Ejemplo: Pronostico del partido 5-1 Resultado Real 5-4
										3. Si acert�s ELV y ninguno de los goles de cada selecci�n: 2
										puntos Ejemplo: Pronostico del partido 4-3 Resultado Real: 1-0
										4. Si acert�s cantidad de goles de 1 equipo nada m�s: 1 punto
										Ejemplo: Pronostico del partido 1-0 Resultado Real: 0-0 5. Si
										no acert�s nada: 0 puntos Ejemplo: Pronostico del partido 0-1
										Resultado Real: 2-2
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo"> Results </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">RESULTS</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree"> Winners </a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">WINNERS</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseFour"> Awards </a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse">
							<div class="panel-body">AWARDS</div>
						</div>
					</div>
				</div>


			</div>
			</div>
		</div>
		<jsp:include page="secure/includes/footer.jsp" />
	</body>
</html>