<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<jsp:include page="includes/header.jsp" />
		<script type="text/javascript" src="/js/registration.js"></script>
	</head>
	<body id="prode-container" class="register">
	
		
		<script type="text/javascript">
			<c:if test="${not empty personSector}">
				var selectedSector = ${personSector.id};
			</c:if>
			
			<c:if test="${not empty personCountry}">
				var selectedCountry = ${personCountry.id};
			</c:if>
			
			var countries = '[';
			
			<c:if test="${not empty countries}">
				<c:set var="i" scope="session" value="${0}"/>
				
				<c:forEach items="${countries}" var="country">
					<c:if test="${i != 0}">
						countries = countries.concat(', ');
					</c:if>
					
					countries = countries.concat('{"id" : "${country.id}", "name" :  "${country.name}"}');
					
					<c:set var="i" value="${country.id}"/>
				</c:forEach>
			</c:if>
			
			countries = countries.concat(']');
			
			var sectors = '[';
			
			<c:if test="${not empty sectors}">
				<c:set var="j" scope="session" value="${0}"/>
				
				<c:forEach items="${sectors}" var="sector">
					<c:if test="${j != 0}">
						sectors = sectors.concat(', ');
					</c:if>
					
					sectors = sectors.concat('{"id" : "${sector.id}", "name" :  "${sector.name}", "country" : "${sector.country.id}"}');
					
					<c:set var="j" value="${sector.id}"/>
				</c:forEach>
			</c:if>
			
			sectors = sectors.concat(']');
			
			countries = jQuery.parseJSON( countries );
			sectors = jQuery.parseJSON( sectors );
		</script>
		
		<jsp:include page="includes/menu-bar.jsp" />
		<div id="central-container">
			<div id="messages">
			</div>
			
			<div class="oe-header">
				<span class="blue">2014 FIFA World Cup Brazil</span> <span class="green subtitle">Registration</span>
			</div>

			<div class="panel panel-default pr-information">
				<div class="panel-heading">Personal Information</div>
				<div class="panel-body">
					<div class="reg-personal" style="width: 100%;">
						<div class="profilePicBig" style="float: left; display: inline-block;">
							<img src="${profilePicture}" style="width: 350px; height: 350px;">
						</div>
						<div class="personalData" style="float: right; display: inline-block; width: 550px;">
							<div class="input-group">
								<span class="input-group-addon">Name:</span>
								<input type="text" class="form-control" disabled value="${name}">
							</div>
							</br>
							<div class="input-group">
								<span class="input-group-addon">Email:</span>
								<input type="text" class="form-control" disabled value="${email}">
							</div>
							</br>
							<div class="subTitle">Country:</div>
							<select class="country form-control">
								
							</select>
							</br>
							<div class="subTitle">Sector:</div>
							<select class="sector form-control">
							</select>
						</div>
					</div>
				</div>
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
														<c:if test="${empty match.prode}">
															<input style="width: 30px; height: 30px;" value="" maxlength="1" class="team_a_result">
																<div class="dash">-</div>
																<input style="width: 30px; height: 30px;" value="" maxlength="1" class="team_b_result">
														</c:if>
														<c:forEach items="${match.prode}" var="prode">
															<c:if test="${prode.team.id == match.teamA.id}">
																<input style="width: 30px; height: 30px;" value="${prode.gol}" maxlength="1" class="team_a_result">
															</c:if>
															<c:if test="${prode.team.id == match.teamB.id}">
																<div class="dash">-</div>
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
			<div class="btn-container">
				<a href="#" class="btn btn-primary submit">Submit</a>
				<a href="#" class="btn btn-default save">Save</a>
			</div>
		</div>
		<jsp:include page="includes/footer.jsp" />
	</body>
</html>