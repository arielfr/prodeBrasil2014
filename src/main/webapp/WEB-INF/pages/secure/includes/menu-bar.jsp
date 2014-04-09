<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-default navbar-static-top oe-bar" role="navigation">
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
						<a href="#">Resultados</a>
					</li>
					<li>
						<a href="#">Puntajes</a>
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