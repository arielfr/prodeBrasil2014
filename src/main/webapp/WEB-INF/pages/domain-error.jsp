<html>
	<head>
		<jsp:include page="secure/includes/header.jsp" />
	</head>
	<body id="prode-container">
		<jsp:include page="secure/includes/menu-bar.jsp" />
		<div id="central-container">
		
			<div class="oe-header">
				<span class="blue">FIFA World Cup</span><span class="green"> Brazil</span> <span class="red">2014</span> <span class="subtitle">Error</span>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="alert alert-danger"><span class="glyphicon glyphicon-asterisk"></span> You have been automatically log out</div>
					<p>This application required to use an <strong>@openenglish</strong> account to access. Please log in with an <strong>@openenglish</strong> Google Account before entering again.</p>
					<p>You can click on the link below and enter the page again</p>
					<p><span class="glyphicon glyphicon-hand-up"></span> <a href="https://mail.google.com/mail/u/0/?logout&hl=en" target="_blank">Click here to log out from Google</a></p>
				</div>
			</div>
		</div>
		<jsp:include page="secure/includes/footer.jsp" />
	</body>
</html>