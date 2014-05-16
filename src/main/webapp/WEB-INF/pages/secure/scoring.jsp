<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>

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
				<span class="blue">2014 FIFA World Cup Brazil</span> <span class="green subtitle">Calculate Scoring</span>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-body">
					The scores have been updated
				</div>
			</div>
		</div>
		<jsp:include page="includes/footer.jsp" />
	</body>
</html>