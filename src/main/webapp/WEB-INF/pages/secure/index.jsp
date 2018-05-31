<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>

<html>
	<head>
		<jsp:include page="includes/header.jsp" />
		<script type="text/javascript" src="/js/index.js"></script>
	</head>
	<body id="prode-container" class="fixture">
		<jsp:include page="includes/menu-bar.jsp" />
		<div id="central-container">
			<div id="messages">
			</div>

			<div class="oe-header">
				<h1>Fixture</h1>
				<h4 class="updated">
				<c:if test="${not empty logdate}">
					Last update: <joda:format value="${logdate}" style="SS" dateTimeZone="${personTimezone}"/>
				</c:if>
				</h4>
			</div>

			<jsp:include page="includes/podium.jsp" />

			<c:forEach items="${fixture}" var="fixture">
				<div class="panel panel-default pr-index">
					<div class="panel-heading" group="${fixture.key}">${fixture.value[0].group.name}</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-12 fixb first">
								<div class="prode-block">
									<table class="table">
										<thead>
											<tr class="active">
												<th>Date</th>
												<th>Team A</th>
												<th>Result</th>
												<th>Team B</th>
												<th>City</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${fixture.value}" var="match">
												<tr class="match_row" match="${match.id}">
													<td class="matchDate">
														<joda:format value="${match.dateMatch}" style="SS" dateTimeZone="${personTimezone}"/>
													</td>
													<td>
														<div class="teams">
															<div class="flag fteam_a" team_a="${match.teamA.id}">
																<img class="${match.teamA.flag}" src="/assets/banderas.png">
															</div>
															${match.teamA.name}
														</div>
													</td>



													<td class="results">
														<c:choose>
															<c:when test="${not empty match.prode}">
																<c:forEach items="${match.prode}" var="prode">
																	<c:if test="${not empty prode}">
																		<c:if test="${prode.team.id == match.teamA.id}">
																			<input style="width: 30px; height: 30px;" value="${prode.gol}" maxlength="1" class="team_a_result" disabled>
																			<c:if test="${empty match.result}">
																				<input style="width: 30px; height: 30px;" value="" maxlength="1" class="team_a_result_fifa" disabled>
																			</c:if>
																			<c:if test="${not empty match.result}">
																				<c:forEach items="${match.result}" var="result">
																					<c:if test="${result.team.id == match.teamA.id}">
																						<input style="width: 30px; height: 30px;" value="${result.gol}" maxlength="1" class="team_a_result_fifa" disabled>
																					</c:if>
																				</c:forEach>
																			</c:if>
																		</c:if>
																	</c:if>
																</c:forEach>
																<c:forEach items="${match.prode}" var="prode">
																	<c:if test="${prode.team.id == match.teamB.id}">
																		<div class="dash">-</div>
																		<c:if test="${empty match.result}">
																			<input style="width: 30px; height: 30px;" value="" maxlength="1" class="team_b_result_fifa" disabled>
																		</c:if>
																		<c:if test="${not empty match.result}">
																			<c:forEach items="${match.result}" var="result">
																				<c:if test="${result.team.id == match.teamB.id}">
																					<input style="width: 30px; height: 30px;" value="${result.gol}" maxlength="1" class="team_b_result_fifa" disabled>
																				</c:if>
																			</c:forEach>
																		</c:if>
																		<input style="width: 30px; height: 30px;" value="${prode.gol}" maxlength="1" class="team_b_result" disabled>
																	</c:if>
																</c:forEach>
															</c:when>
															<c:otherwise>
																<c:if test="${empty match.result}">
																	<input style="width: 30px; height: 30px;" value="" maxlength="1" class="team_a_result_fifa" disabled>
																	<div class="dash">-</div>
																	<input style="width: 30px; height: 30px;" value="" maxlength="1" class="team_b_result_fifa" disabled>
																</c:if>
																<c:if test="${not empty match.result}">
																	<c:forEach items="${match.result}" var="result">
																		<c:if test="${result.team.id == match.teamA.id}">
																			<input style="width: 30px; height: 30px;" value="${result.gol}" maxlength="1" class="team_a_result_fifa" disabled>
																		</c:if>
																	</c:forEach>
																	<div class="dash">-</div>
																	<c:forEach items="${match.result}" var="result">
																		<c:if test="${result.team.id == match.teamB.id}">
																			<input style="width: 30px; height: 30px;" value="${result.gol}" maxlength="1" class="team_b_result_fifa" disabled>
																		</c:if>
																	</c:forEach>
																</c:if>
															</c:otherwise>
														</c:choose>
													</td>
													<td>
														<div class="teams">
															${match.teamB.name}
															<div class="flag fteam_b"  team_b="${match.teamB.id}">
																<img class="${match.teamB.flag}" src="/assets/banderas.png">
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
