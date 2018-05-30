<html>
	<head>
		<jsp:include page="secure/includes/header.jsp" />
	</head>
	<body id="prode-container">
		<jsp:include page="secure/includes/menu-bar.jsp" />
		<div id="central-container">

			<div class="oe-header">
				<span class="blue">2018 Fifa World Cup Russia</span> <span class="green subtitle">FAQ</span>
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
											<th>Regulation</th>
											<th>Example</th>
											<th>Score</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td> 1 </td>
											<td> Hit both the outlook and the results of the game </td>
											<td> Prognostic of the match: 2-1 and Real Result: 2-1 </td>
											<td> 5 points </td>
										</tr>
										<tr>
											<td> 2 </td>
											<td> Hit the forecast of the game, but only the total goals of one team </td>
											<td> Prognostic of the match: 5-1 and Real Result: 5-4 </td>
											<td> 3 points </td>
										</tr>
										<tr>
											<td> 3 </td>
											<td> Hit the forecast but not the total goals </td>
											<td> Prognostic of the match: 4-3 and Real Result: 1-0 </td>
											<td> 2 points </td>
										</tr>
										<tr>
											<td> 4 </td>
											<td> Hit only one team�s total goals. </td>
											<td> Prognostic of the match: 1-0 and Real Result: 0-0 </td>
											<td> 1 point </td>
										</tr>
									</tbody>
								</table>
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
							<div class="panel-body">The results will be updated daily. A task will run automatically on midnights. This can be done manually by OE Argentina Team too.</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<jsp:include page="secure/includes/footer.jsp" />
	</body>
</html>
