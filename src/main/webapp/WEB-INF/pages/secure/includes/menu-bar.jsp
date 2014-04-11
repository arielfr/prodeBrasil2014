<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-default navbar-fixed-top oe-bar" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="/secure/index">
				<img class="oe-logo" src="/assets/oe_logo_alternative.png">
				<img class="wc-logo" src="/assets/wc_logo.png">
			</a>
		</div>
	    <div class="collapse navbar-collapse">
	    	<c:if test="${register}">
				<ul class="nav navbar-nav central">
					<li>
						<a href="/secure/index">Scores</a>
					</li>
					<li>
						<a href="/secure/positions">Global Positions</a>
					</li>
					<li>
						<a href="/secure/positions_country">Country Positions</a>
					</li>
					<li>
						<a href="/secure/positions_sector">Sector Positions</a>
					</li>
					<li>
						<a href="/secure/faq">FAQ</a>
					</li>
				</ul>
			</c:if>
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${login}">
					<li>
						<p class="navbar-text">${name}</p>
					</li>
					<li>
						<img class="profile-image img-circle" src="${profilePicture}">
					</li>
					<li>
						<a href="/j_spring_security_logout">Logout</a>
					</li>
				</c:if>
			</ul>
		</div>
	</div>
</nav>