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
											<td> Hit HDV and total of goals </td>
											<td> Prognostic of the match: 2-1 and Real Result: 2-1 </td>
											<td> 5 points </td>
										</tr>
										<tr>
											<td> 2 </td>
											<td> Hit HDV and total goals of only one team </td>
											<td> Prognostic of the match: 5-1 and Real Result: 5-4 </td>
											<td> 3 points </td>
										</tr>
										<tr>
											<td> 3 </td>
											<td> Hit HDV and any goals of the match </td>
											<td> Prognostic of the match: 4-3 and Real Result: 1-0 </td>
											<td> 2 points </td>
										</tr>
										<tr>
											<td> 4 </td>
											<td> Hit only total of goals one team </td>
											<td> Prognostic of the match: 1-0 and Real Result: 0-0 </td>
											<td> 1 point </td>
										</tr>
									</tbody>
								</table>
								<p> * HDV: H -> Home Team, D -> Deuce, V -> Visitor Team.  </p>
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