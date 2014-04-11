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
				<span class="blue">2014 FIFA World Cup Brazil</span> <span class="green subtitle">Sector Positions</span>
			</div>
			
			<c:forEach items="${positionsBySector}" var="sector">
				<c:set var="forPodium" value="${sector}" scope="request"></c:set>
				
				<div class="panel panel-default panel-oe">
					<div class="panel-heading">${sector.value[0].person.sector.name}</div>
					<div class="panel-body">
						<jsp:include page="includes/custom_podium.jsp" />
						
						<c:if test="${not empty positionsBySector}">
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
									<c:forEach items="${sector.value}" var="person">
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