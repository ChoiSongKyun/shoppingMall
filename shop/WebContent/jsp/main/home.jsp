<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<style>
.carousel-inner img {
	width: 100%; /* Set width to 100% */
	margin: auto;
	min-height: 200px;
}
/* Hide the carousel text when the screen is less than 600 pixels wide */
@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
	}
}
</style>

</head>
<body>

	<jsp:include page="header.jsp" />

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="/shop/img/main1.jpg" alt="Image">
				<div class="carousel-caption">
					<h3>Bridal collection</h3>
					<p></p>
				</div>
			</div>

			<div class="item">
				<img src="/shop/img/main2.jpg"
					alt="Image">
				<div class="carousel-caption">
					<h3>Rose classiqu</h3>
					<p></p>
				</div>
			</div>
			
			<div class="item">
				<img src="/shop/img/main3.jpg"
					alt="Image">
				<div class="carousel-caption">
					<h3>Champ de fleurs</h3>
					<p></p>
				</div>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<div class="container-fluid text-center">
		<br> <br> <br>
		<div class="row">

			<div class="col-sm-6">
				<img src="https://placehold.it/150x82?text=IMAGE"
					class="img-responsive" style="width: 100%" alt="Image">
				<p>Current Project</p>
			</div>

			<div class="col-sm-3">
				<img src="https://placehold.it/150x80?text=IMAGE"
					class="img-responsive" style="width: 100%" alt="Image">
				<p>Project 2</p>
			</div>
			<div class="col-sm-3">
				<img src="https://placehold.it/150x80?text=IMAGE"
					class="img-responsive" style="width: 100%" alt="Image">
				<p>Project 2</p>
			</div>
			<div class="col-sm-3">
				<img src="https://placehold.it/150x80?text=IMAGE"
					class="img-responsive" style="width: 100%" alt="Image">
				<p>Project 2</p>
			</div>
			<div class="col-sm-3">
				<img src="https://placehold.it/150x80?text=IMAGE"
					class="img-responsive" style="width: 100%" alt="Image">
				<p>Project 2</p>
			</div>



		</div>
	</div>
	<br>
	<br>
	<br> 
	<div class="container text-center" style="margin-bottom: 200px">
		<h3>B E S T</h3>
		<br>
		<div class="row">
			<!-- 그림하나  -->
			<c:forEach var="i" items="${list}" varStatus="cnt">
					<div class="col-sm-3" style="margin-bottom: 30px; margin-top: 30px">
				<a href="/shop/info.do?cmd=info&pno=${i.pno }">
						<img src="/shop/img/${i.mainimg}" class="img-responsive" alt="${i.mainimg}">
						<p>${i.pname}</p>
						<p>${i.price}</p>
				</a>
					</div>
					<c:if test="${cnt.count%4 == 0}">
						</div><div class="row">
					</c:if>
			</c:forEach>
		</div>
	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>
