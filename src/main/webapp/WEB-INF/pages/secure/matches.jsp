<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>

<html>
	<head>
		<jsp:include page="includes/header.jsp" />
		<script type="text/javascript" src="/js/matches.js"></script>
	</head>
	<body id="prode-container" class="register">
		<jsp:include page="includes/menu-bar.jsp" />
		<div id="central-container">
			<div id="messages">
			</div>
			
			<div class="oe-header">
				<span class="blue">2014 FIFA World Cup Brazil</span> <span class="green subtitle">Results</span>
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
												<th>City</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${fixture.value}" var="match">
												<tr class="match_row" match="${match.id}">
													<td class="matchDate">
														<joda:format value="${match.dateMatch}" pattern="dd-MM-yyyy" style="F-" />
													</td>
													<td>
														<div class="teams">
															<div class="flag fteam_a" team_a="${match.teamA.id}">
																<img class="${match.teamA.flag}" src="/assets/Flags.gif">
															</div>
															${match.teamA.name}
														</div>
													</td>
													<td class="results">
														<c:if test="${empty match.result}">
															<input style="width: 30px; height: 30px;" value="" maxlength="1" class="team_a_result">
																<div class="dash">-</div>
																<input style="width: 30px; height: 30px;" value="" maxlength="1" class="team_b_result">
														</c:if>
														<c:forEach items="${match.result}" var="result">
															<c:if test="${result.team.id == match.teamA.id}">
																<input style="width: 30px; height: 30px;" value="${result.gol}" maxlength="1" class="team_a_result">
															</c:if>
															<c:if test="${result.team.id == match.teamB.id}">
																<div class="dash">-</div>
																<input style="width: 30px; height: 30px;" value="${result.gol}" maxlength="1" class="team_b_result">
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
			<div class="btn-container">
				<a href="#" class="btn btn-primary submit">Submit</a>
				<a href="#" class="btn btn-default save">Save</a>
			</div>
		</div>
		<jsp:include page="includes/footer.jsp" />
	</body>
</html>