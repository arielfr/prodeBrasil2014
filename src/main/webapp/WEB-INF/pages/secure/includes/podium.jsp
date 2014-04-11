<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty podium}">
	<c:set var="i" value="0"/>
	<div class="row fpositions">
	<c:forEach items="${podium}" var="person">
		<div class="col-xs-6 col-md-2">
			<span href="#" class="thumbnail <c:if test="${i == 0}">first</c:if>">
				<c:if test="${not empty person.photo}">
					<img src="${person.photo}">
				</c:if>
				<c:if test="${empty person.photo}">
					<img src="/assets/unknown.jpg">
				</c:if>
				<span>1. ${person.name} (${person.score})</span>
			</span>
		</div>
		<c:set var="i" value="${person.id}"/>
	</c:forEach>
	</div>
</c:if>