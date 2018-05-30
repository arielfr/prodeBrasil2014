<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<jsp:include page="includes/header.jsp" />
		<script type="text/javascript" src="/js/index.js"></script>
	</head>
	<body id="prode-container" class="register">
		<jsp:include page="includes/menu-bar.jsp" />
		<div id="central-container">
			<div id="messages">
			</div>

			<div class="oe-header">
				<span class="blue">2018 Fifa World Cup Russia</span> <span class="green subtitle">Country Positions</span>
			</div>

			<c:forEach items="${positionsByCountry}" var="country">
				<c:set var="forPodium" value="${country}" scope="request"></c:set>

				<div class="panel panel-default panel-oe">
					<div class="panel-heading">${country.value[0].person.country.name}</div>
					<div class="panel-body">
						<jsp:include page="includes/custom_podium.jsp" />

						<c:if test="${not empty positionsByCountry}">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>#</th>
										<th>Name</th>
										<th>Country</th>
										<th>Sector</th>
										<th>Score</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${country.value}" var="person">
										<tr class="<c:if test="${person.position == 1}">success</c:if>">
											<td>${person.position}</td>
											<td>${person.person.name}</td>
											<td>${person.person.country.name}</td>
											<td>${person.person.sector.name}</td>
											<td>${person.person.score}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</c:if>
					</div>
				</div>
			</c:forEach>
		</div>

		<jsp:include page="includes/footer.jsp" />
	</body>
</html>
