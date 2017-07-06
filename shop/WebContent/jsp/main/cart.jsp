<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>

<body>
${cart}


	<jsp:include page="header.jsp" />



	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-12" style="margin-bottom: 50px">



				<h2 align="center" style="margin-bottom: 100px">C A R T</h2>
				<table class="table" style="margin-bottom: 0;">
					<thead>
						<tr>
							<th style="text-align: right;">장바구니에 담긴 상품은 14일 동안 보관됩니다.</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><br> <br>일반상품(0)</td>
						</tr>
					</tbody>
				</table>
				<table class="table" style="margin-top: 0;">
					<thead
						style="border-top: 1px solid #ddd; background-color: #f7f7f7;">
						<tr style="height: 55px;">
							<th
								style="text-align: center; width: 1%; vertical-align: middle;"><input
								type="checkbox" value=""></th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">이미지</th>
							<th style="text-align: center; vertical-align: middle;">상품정보</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">판매가</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">수량</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">적립금</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">배송구분</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">배송비</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">합계</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">선택</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="i" items="${cart}">
						<tr>
							<!-- 채크 -->
							<td style="vertical-align: middle;"><input type="checkbox"
								value=""></td>

							<!--이미지  -->
							<td style="vertical-align: middle;"><img
								src="/shop/img/${i.mainimg}"
								class="img-responsive" style="width: 100%" alt="Image"
								align="top"></td>
							<!-- 상품정보 -->
							<td style="vertical-align: middle;"><strong>벨토아 가디건</strong>
								<h6>[옵션:free]</h6> <a href="#" class="btn btn-xs btn-default">옵션변경</a></td>
							<!-- 판매가 -->
							<td style="vertical-align: middle; text-align: center;"><span>${i.price}</span>
								won</td>

							<!-- 수량 -->
							<td style="vertical-align: middle;" align="center">

								<div class="col-sm-6" align="right" style="padding: 0;">

									<span><input type="text"
										style="width: 20px; height: 30px" value="${i.bamount}"></span>

								</div>
								<div class="col-sm-6" align="left" style="padding: 0;">
									<a href="#" class="btn btn-xs btn-default"> <span
										class="glyphicon glyphicon-chevron-up"></span>
									</a><br> <a href="#" class="btn btn-xs btn-default"><span
										class="glyphicon glyphicon-chevron-down"></span></a>
								</div>
							</td>
							<!-- 적립금 -->
							<td style="vertical-align: middle; text-align: center;">-</td>
							<!-- 배송구분 -->
							<td style="vertical-align: middle; text-align: center;">기본배송</td>
							<!-- 배송비-->
							<td style="vertical-align: middle; text-align: center;">무료</td>
							<!-- 합계 -->
							<td style="vertical-align: middle; text-align: center;"><span>${i.price*i.bamount}</span>
								won</td>
							<!--선택  -->
							<td style="vertical-align: middle; text-align: center;"><a
								href="#" class="btn btn-sm btn-default"
								style="background-color: black; color: white;">주문하기</a><br>
								<a href="#" class="btn btn-sm btn-default"
								style="margin-top: 5px; margin-bottom: 5px">관심상품</a><br> <a
								href="#" class="btn btn-sm btn-default">삭제하기</a></td>
						</tr>
						</c:forEach>

						<tr style="height: 70px; background-color: #f7f7f7">
							<td colspan="5" style="text-align: left; vertical-align: middle;">&nbsp;[기본배송]</td>
							<td colspan="5"
								style="text-align: right; vertical-align: middle;">상품구매금액
								32,000 + 배송비 0(무료)=합계: 74,000 won &nbsp;</td>

						</tr>
 
						<tr style="height: 50px;">
							<td colspan="5" style="text-align: left; vertical-align: middle;">&nbsp;
								선택상품을 &nbsp;<a href="#" class="btn btn-sm btn-default">삭제하기</a>
							</td>
							<td colspan="5"
								style="text-align: right; vertical-align: middle;"><a
								href="#" class="btn btn-sm btn-default">장바구니비우기&nbsp;</a></td>

						</tr>

					</tbody>
				</table>
			</div>

			<div class="col-sm-12" style="margin-bottom: 20px">
				<table class=table style="border: 1px solid #ddd;">
					<tr
						style="border: 1px solid #ddd; background-color: #f7f7f7; height: 40px;">
						<th
							style="vertical-align: middle; text-align: center; border: 1px solid #ddd;">총
							상품 금액</th>
						<th
							style="vertical-align: middle; text-align: center; border: 1px solid #ddd;">총
							배송비</th>
						<th
							style="vertical-align: middle; text-align: center; border: 1px solid #ddd;">결제예정금액</th>
					</tr>
					<tr style="height: 60px;">
						<td
							style="vertical-align: middle; text-align: center; border: 1px solid #ddd;">32,000
							won</td>
						<td
							style="vertical-align: middle; text-align: center; border: 1px solid #ddd;">+0
							won</td>
						<td
							style="vertical-align: middle; text-align: center; border: 1px solid #ddd;">=32,000
							won</td>
					</tr>
				</table>
				<div class="col-sm-12" style="margin-bottom: 20px" align="center">
					<a href="#" class="btn btn-default btn-default"
						style="width: 150px; text-align: center; background-color: black; color: white;">전체상품주문</a>&nbsp;
					<a href="#" class="btn btn-default btn-default"
						style="width: 150px; text-align: center;">선택상품주문</a>
				</div>
			</div>


			<div class="col-sm-12" style="margin-bottom: 20px">
				<table class=table style="border: 1px solid #ddd;">
					<tr
						style="border: 1px solid #ddd; background-color: #f7f7f7; height: 40px;">
						<th style="vertical-align: middle; border: 1px solid #ddd;">&nbsp;이용안내</th>
					</tr>
					<tr style="height: 60px;">
						<td style="vertical-align: middle; border: 1px solid #ddd;">
							<br>&nbsp;장바구니 이용안내<br> <br> &nbsp;해외배송 상품과 국내배송
							상품은 함께 결제하실수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.<br> &nbsp;해외배송 가능
							상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.<br>
							&nbsp;선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.<br>
							&nbsp;[쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수있습니다.<br> &nbsp;장바구니와
							관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수있습니다.<br> <br>&nbsp;무이자할부
							이용안내<br> <br> &nbsp;상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여
							[주문하기] 버튼을 눌러 주문/결제 하시면 됩니다.<br> &nbsp;[전체 상품 주문] 버튼을 누르시면
							장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.<br> &nbsp;단, 전체 상품을
							주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.<br> <br>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>