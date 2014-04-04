<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<jsp:include page="includes/header.jsp" />
	</head>
	<body id="prode-container" class="register">
		<jsp:include page="includes/menu-bar.jsp" />
		<div id="central-container">
			<div class="page-header">
				<h1>FIFA World Cup Brazil 2014 <small>Registration</small></h1>
			</div>

			<div class="panel panel-default">
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
							<select class="form-control">
							    <option value="arg">Argentina</option>
							    <option value="ven">Venezuela</option>
							    <option value="mia">Miami</option>
							</select>
							</br>
							<div class="subTitle">Sector:</div>
							<select class="form-control">
							    <option value="learn">Learning Platform</option>
							    <option value="bi">Business Intelligence</option>
							    <option value="aut">Automation</option>
							    <option value="man">Management</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			
			<c:forEach items="${fixture}" var="entry">
				<div class="panel panel-default pr-registration">
					<c:forEach items="${entry.value}" var="fixture">
						<div class="panel-heading" group="${fixture.key.id}">${fixture.key.name}</div>
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
														<input style="width: 30px; height: 30px;" value="" maxlength="1" class="team_a_result">
														<div class="dash">-</div>
														<input style="width: 30px; height: 30px;" value="" maxlength="1" class="team_b_result">
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
					</c:forEach>
				</div>
			</c:forEach>
		</div>
	</body>
</html>