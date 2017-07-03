<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</style>
</head>

<body>

	<jsp:include page="header.jsp" />



	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-12">



				<h2 align="center" style="margin-bottom: 100px">C A R T</h2>
				<table class="table" style="margin-bottom: 0;">
					<thead>
						<tr>
							<th style="text-align: right;">장바구니에 담긴 상품은 14일 동안 보관됩니다.</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><br>
							<br>일반상품(0)</td>
						</tr>
					</tbody>
				</table>
				<table class="table" style="margin-top: 0;">
					<thead style="border-top: 1px solid #ddd;">
						<tr>
							<th style="text-align: center; width: 1%"><input
								type="checkbox" value=""></th>
							<th style="text-align: center; width: 10%">이미지</th>
							<th style="text-align: center;">상품정보</th>
							<th style="text-align: center;">판매가</th>
							<th style="text-align: center;">수량</th>
							<th style="text-align: center;">적립금</th>
							<th style="text-align: center;">배송구분</th>
							<th style="text-align: center;">배송비</th>
							<th style="text-align: center;">합계</th>
							<th style="text-align: center;">선택</th>
						</tr>
					</thead>
					<tbody>
						<tr >
							<td style="vertical-align: middle;"><input type="checkbox" value=""></td>
							<td style="vertical-align: middle;"><img src="https://placehold.it/150x180?text=IMAGE"
								class="img-responsive" style="width: 100%" alt="Image"
								align="top"></td>
							<td style="vertical-align: middle;"><strong>벨토아 가디건</strong> 
							<h6>[옵션:free]</h6>
							 
							<a href="#"
								class="btn btn-xs btn-default">옵션변경</a></td>
							<td style="vertical-align: middle; text-align: center;">32,000 won</td>
							<td style="vertical-align: middle;" align="center">
							
							<div class="col-sm-6" align="right" style=" padding: 0;">
							
							<span><input type="text" style="width: 20px; height: 30px"></span>														
							
							</div>
							<div class="col-sm-6" align="left"  style=" padding: 0; ">
							<a href="#" class="btn btn-xs btn-default" >
							<span class="glyphicon glyphicon-chevron-up"></span> </a><br>
							<a href="#" class="btn btn-xs btn-default"><span class="glyphicon glyphicon-chevron-down"></span></a></div>
							
							</td>
							<td style="vertical-align: middle; text-align: center;">320원</td>
							<td style="vertical-align: middle; text-align: center;">32,000 won</td>
						</tr>

					</tbody>
				</table>




			</div>
		</div>
	</div>












	<jsp:include page="footer.jsp" />
</body>
</html>