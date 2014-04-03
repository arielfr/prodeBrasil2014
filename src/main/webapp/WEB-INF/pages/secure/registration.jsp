<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<jsp:include page="includes/header.jsp" />
	</head>
	<body id="prode-container">
		<jsp:include page="includes/menu-bar.jsp" />
		<div id="central-container">
			<div class="page-header">
				<h1>Fixture - Mundial Brasil 2014</h1>
			</div>
			
			<c:forEach items="${fixture}" var="entry">
				<div class="panel panel-default">
					<c:forEach items="${entry.value}" var="fixture">
						<div class="panel-heading">${fixture.key.name}</div>
						<div class="panel-body">
						<div class="row">
							<div class="col-md-12 fixb first">
								<div class="prode-block">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>Date</th>
												<th>Team A</th>
												<th>Result</th>
												<th>Team B</th>
												<th>Place</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${fixture.value}" var="match">
												<tr>
													<td class="matchDate">${match.dateMatch}</td>
													<td>
														<div class="teams">
															<div class="flag fteam_a">
																<img class="${match.teamA.flag}" src="/assets/Flags.gif">
															</div>
															${match.teamA.name}
														</div>
													</td>
													<td class="results">
														<input style="width: 30px; height: 30px;" value="" maxlength="1">
														<div class="dash">-</div>
														<input style="width: 30px; height: 30px;" value="" maxlength="1">
													</td>
													<td>
														<div class="teams">
															${match.teamB.name}
															<div class="flag fteam_b">
																<img class="${match.teamB.flag}" src="/assets/Flags.gif">
															</div>
														</div>
													</td>
													<td class="matchCity">${match.city.name}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</c:forEach>
		</div>
	</body>
</html>