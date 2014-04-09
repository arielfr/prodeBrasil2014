<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<jsp:include page="includes/header.jsp" />
	</head>
	<body id="prode-container" class="register">
		<jsp:include page="includes/menu-bar.jsp" />
		<div id="central-container">
			<div id="messages">
			</div>
			
			<div class="page-header">
				<h1>FIFA World Cup Brazil 2014 <small>Scores</small></h1>
			</div>
			
			<c:forEach items="${fixture}" var="fixture">
				<div class="panel panel-default pr-registration">
					<div class="panel-heading" group="${fixture.key}">${fixture.value[0].group.name}</div>
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
												<tr class="match_row" match="${match.id}">
													<td class="matchDate">${match.dateMatch}</td>
													<td>
														<div class="teams">
															<div class="flag fteam_a" team_a="${match.teamA.id}">
																<img class="${match.teamA.flag}" src="/assets/Flags.gif">
															</div>
															${match.teamA.name}
														</div>
													</td>
													<td class="results">
														<c:forEach items="${match.prode}" var="prode">
															<c:if test="${prode.team.id == match.teamA.id}">
																<input style="width: 30px; height: 30px;" value="${prode.gol}" maxlength="1" class="team_a_result">
																<c:if test="${empty match.result}">
																	<input style="width: 30px; height: 30px;" value="" maxlength="1" class="team_a_result_fifa">
																</c:if>
																<c:if test="${not empty match.result}">
																	<c:forEach items="${match.result}" var="prode">
																		<c:if test="${result.team.id == match.teamA.id}">
																			<input style="width: 30px; height: 30px;" value="${result.gol}" maxlength="1" class="team_a_result_fifa">
																		</c:if>
																	</c:forEach>
																</c:if>
															</c:if>
															<c:if test="${prode.team.id == match.teamB.id}">
																<div class="dash">-</div>
																<c:if test="${empty match.result}">
																	<input style="width: 30px; height: 30px;" value="" maxlength="1" class="team_b_result_fifa">
																</c:if>
																<c:if test="${not empty match.result}">
																	<c:forEach items="${match.result}" var="prode">
																		<c:if test="${result.team.id == match.teamB.id}">
																			<div class="dash">-</div>
																			<input style="width: 30px; height: 30px;" value="${result.gol}" maxlength="1" class="team_b_result_fifa">
																		</c:if>
																	</c:forEach>
																</c:if>
																<input style="width: 30px; height: 30px;" value="${prode.gol}" maxlength="1" class="team_b_result">
															</c:if>
														</c:forEach>
													</td>
													<td>
														<div class="teams">
															${match.teamB.name}
															<div class="flag fteam_b"  team_b="${match.teamB.id}">
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
				</div>
			</c:forEach>
		</div>
		<jsp:include page="includes/footer.jsp" />
	</body>
</html>