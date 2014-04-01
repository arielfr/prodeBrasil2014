<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="/secure/index">
				<img class="oe-logo" src="/assets/oe_logo.png">
				<img class="wc-logo" src="/assets/wc_logo.png">
			</a>
		</div>
		
		<c:if test="${register}">
		    <div class="collapse navbar-collapse">
				<ul class="nav navbar-nav central">
					<li>
						<a href="#">Resultados</a>
					</li>
					<li>
						<a href="#">Puntajes</a>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li>
						<p class="navbar-text">${name}</p>
					</li>
					<li>
						<img class="profile-image" src="${profilePicture}">
					</li>
				</ul>
			</div>
		</c:if>
	</div>
</nav>