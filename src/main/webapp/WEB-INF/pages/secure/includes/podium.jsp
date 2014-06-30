<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty podium}">
	<div class="row fpositions">
	<c:forEach items="${podium}" var="podium">
		<div class="col-xs-2">
			<span href="#" class="thumbnail <c:if test="${podium.position == 1}">first</c:if>">
				<c:if test="${not empty podium.person.photo}">
					<img src="${podium.person.photo}">
				</c:if>
				<c:if test="${empty podium.person.photo}">
					<img src="/assets/unknown.jpg">
				</c:if>
				<span>${podium.position}. ${podium.person.name} (${podium.person.score})</span>
			</span>
		</div>
	</c:forEach>
	</div>
</c:if>