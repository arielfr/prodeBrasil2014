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
											<td> acertás ELV y los goles convertidos </td>
											<td> 5 puntos </td>
											<td> Ejemplo: Pronostico del partido 2-1 Resultado Real: 2-1 2 </td>
										</tr>
									</tbody>
								</table>
									Los puntos serán calculados en base al siguiente
										criterio: 1. Si acertás ELV y los goles convertidos: 5 puntos
										Ejemplo: Pronostico del partido 2-1 Resultado Real: 2-1 2. Si
										acertás ELV y la cantidad de goles de sólo 1 selección: 3
										puntos Ejemplo: Pronostico del partido 5-1 Resultado Real 5-4
										3. Si acertás ELV y ninguno de los goles de cada selección: 2
										puntos Ejemplo: Pronostico del partido 4-3 Resultado Real: 1-0
										4. Si acertás cantidad de goles de 1 equipo nada más: 1 punto
										Ejemplo: Pronostico del partido 1-0 Resultado Real: 0-0 5. Si
										no acertás nada: 0 puntos Ejemplo: Pronostico del partido 0-1
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