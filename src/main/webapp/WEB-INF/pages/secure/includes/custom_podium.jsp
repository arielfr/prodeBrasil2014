<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty forPodium.value}">
	<div class="row fpositions">
	<c:forEach items="${forPodium.value}" var="person" begin="0" end="5">
		<div class="col-xs-6 col-md-2">
			<span href="#" class="thumbnail <c:if test="${person.position == 1}">first</c:if>">
				<c:if test="${not empty person.person.photo}">
					<img src="${person.person.photo}">
				</c:if>
				<c:if test="${empty person.person.photo}">
					<img src="/assets/unknown.jpg">
				</c:if>
				<span>${person.position}. ${person.person.name} (${person.person.score})</span>
			</span>
		</div>
	</c:forEach>
	</div>
</c:if>