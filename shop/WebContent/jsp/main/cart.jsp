<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	function deleteCart(index,flag) {
		
		document.location = "/shop/deleteCart.do?cmd=deleteCart&index=" + index+"&flag="+flag;

	}

	function amountUp(index, price) {
		var bamount = document.getElementsByName("bamount")[index - 1];
		bamount.value = parseInt(bamount.value) + 1;
		document.getElementsByName("semiprice")[index - 1].innerHTML = parseInt(bamount.value)
				* parseInt(price);

		var p = pprice();
		document.getElementsByName("pprice")[0].innerHTML = p;
		document.getElementsByName("pprice")[1].innerHTML = p;
		
		document.location = "/shop/modifyCart.do?cmd=modifyCart&index=" + (index-1)+"&amount="+bamount.value;

	}
	function amountDown(index, price) {
		var bamount = document.getElementsByName("bamount")[index - 1];
		if (bamount.value > 1) {
			bamount.value = parseInt(bamount.value) - 1;
			document.getElementsByName("semiprice")[index - 1].innerHTML = parseInt(bamount.value)
					* parseInt(price);
		}

		var p = pprice();
		document.getElementsByName("pprice")[0].innerHTML = p;
		document.getElementsByName("pprice")[1].innerHTML = p;
		document.location = "/shop/modifyCart.do?cmd=modifyCart&index=" + (index-1)+"&amount="+bamount.value;

	}

	function pprice() {
		var semiprice = document.getElementsByName("semiprice");
		var pprice = 0

		for (var i = 0; i < semiprice.length; i++) {
			pprice += parseInt(semiprice[i].innerHTML);
		}

		return pprice;
	}
	
	
	
		
		
	
</script>

</head>

<body>



	<jsp:include page="header.jsp" />



	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-12" style="margin-bottom: 50px">


						<c:choose>
							<c:when test="${fn:length(cart)!=0}">

				<h2 align="center" style="margin-bottom: 100px">C A R T</h2>
				<table class="table" style="margin-bottom: 0;">
					<thead>
						<tr>
							<th style="text-align: right;">��ٱ��Ͽ� ��� ��ǰ�� 14�� ���� �����˴ϴ�.</th>
						</tr>
					</thead>
					<tbody>
								<tr>
									<td><br> <br>�Ϲݻ�ǰ(0)</td>
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
								style="text-align: center; width: 8%; vertical-align: middle;">�̹���</th>
							<th style="text-align: center; vertical-align: middle;">��ǰ����</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">�ǸŰ�</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">����</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">������</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">��۱���</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">��ۺ�</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">�հ�</th>
							<th
								style="text-align: center; width: 8%; vertical-align: middle;">����</th>
						</tr>
					</thead>
					<tbody>
						<!--��ǰ�ϳ�  -->
						<c:set var="p" value="0"></c:set>

						<c:forEach var="i" items="${cart}" varStatus="cnt">
							<tr>

								<!-- äũ -->
								<td style="vertical-align: middle;"><input type="checkbox"
									value=""></td>

								<!--�̹���  -->
								<td style="vertical-align: middle;"><img
									src="/shop/img/${i.mainimg}" class="img-responsive"
									style="width: 100%" alt="Image" align="top"></td>
								<!-- ��ǰ���� -->
								<td style="vertical-align: middle;"><strong>�����
										�����</strong>
									<h6>[�ɼ�:free]</h6> <a href="#" class="btn btn-xs btn-default">�ɼǺ���</a></td>
								<!-- �ǸŰ� -->
								<td style="vertical-align: middle; text-align: center;"><span>${i.price}</span>
									won</td>

								<!-- ���� -->
								<td style="vertical-align: middle;" align="center">

									<div class="col-sm-6" align="right" style="padding: 0;">

										<span><input type="text"
											style="width: 20px; height: 30px" value="${i.bamount}"
											name="bamount"></span>

									</div>
									<div class="col-sm-6" align="left" style="padding: 0;">
										<a href="javascript:amountUp(${cnt.count},${i.price})"
											class="btn btn-xs btn-default"> <span
											class="glyphicon glyphicon-chevron-up" id="up"></span>
										</a><br> <a
											href="javascript:amountDown(${cnt.count},${i.price})"
											class="btn btn-xs btn-default"><span
											class="glyphicon glyphicon-chevron-down" id="down"></span></a>

									</div>
								</td>
								<!-- ������ -->
								<td style="vertical-align: middle; text-align: center;">-</td>
								<!-- ��۱��� -->
								<td style="vertical-align: middle; text-align: center;">�⺻���</td>
								<!-- ��ۺ�-->
								<td style="vertical-align: middle; text-align: center;">����</td>
								<!-- �հ� -->
								<td style="vertical-align: middle; text-align: center;"><span
									name="semiprice">${i.price*i.bamount}</span> won</td>
								<!--����  -->
								<td style="vertical-align: middle; text-align: center;"><a
									href="#" class="btn btn-sm btn-default"
									style="background-color: black; color: white;">�ֹ��ϱ�</a><br>
									<a href="#" class="btn btn-sm btn-default"
									style="margin-top: 5px; margin-bottom: 5px">���ɻ�ǰ</a><br> <a
									href="javascript:deleteCart(${cnt.count-1},'one')"
									class="btn btn-sm btn-default">�����ϱ�</a></td>


							</tr>
							<input type="hidden" value="${p=p+(i.price*i.bamount)}">
						</c:forEach>
						<!--  -->

						<tr style="height: 70px; background-color: #f7f7f7">
							<td colspan="5" style="text-align: left; vertical-align: middle;">&nbsp;[�⺻���]</td>
							<td colspan="5"
								style="text-align: right; vertical-align: middle;">��ǰ���űݾ� <span
								name="pprice">${p}</span> won + ��ۺ� 0(����)=�հ�:<span>�Ѱ���</span>
								won &nbsp;
							</td>

						</tr>

						<tr style="height: 50px;">
							<td colspan="5" style="text-align: left; vertical-align: middle;">&nbsp;
								���û�ǰ�� &nbsp;<a href="#" class="btn btn-sm btn-default">�����ϱ�</a>
							</td>
							<td colspan="5"
								style="text-align: right; vertical-align: middle;"><a
								href="javascript:deleteCart('0','all')" class="btn btn-sm btn-default">��ٱ��Ϻ���&nbsp;</a></td>

						</tr>

					</tbody>
				</table>
				</c:when>
				<c:otherwise>
				
				<h2 align="center" style="margin-bottom: 100px">C A R T</h2>
				<table class="table" style="margin-bottom: 0;">
					<thead>
						<tr>
							<th style="text-align: right;">��ٱ��Ͽ� ��� ��ǰ�� 14�� ���� �����˴ϴ�.</th>
						</tr>
					</thead>
					<tbody style="text-align: center;">
								<tr>
									<td><br> <br>��ٱ��ϰ� ��� �ֽ��ϴ�. <br> <br></td>
								</tr>
					</tbody>
					</table>
				
				

					
				</c:otherwise>
				</c:choose>
			</div>


				<div class="col-sm-12" style="margin-bottom: 20px">
			<c:if test="${fn:length(cart)!=0}" >

					<table class=table style="border: 1px solid #ddd;">
						<tr
							style="border: 1px solid #ddd; background-color: #f7f7f7; height: 40px;">
							<th
								style="vertical-align: middle; text-align: center; border: 1px solid #ddd;">��
								��ǰ �ݾ�</th>
							<th
								style="vertical-align: middle; text-align: center; border: 1px solid #ddd;">��
								��ۺ�</th>
							<th
								style="vertical-align: middle; text-align: center; border: 1px solid #ddd;">���������ݾ�</th>
						</tr>
						<tr style="height: 60px;">
							<td
								style="vertical-align: middle; text-align: center; border: 1px solid #ddd;"><span
								name="pprice">${p}</span> won</td>
							<td
								style="vertical-align: middle; text-align: center; border: 1px solid #ddd;">+0
								won</td>
							<td
								style="vertical-align: middle; text-align: center; border: 1px solid #ddd;">=�Ѱ���
								won won</td>
						</tr>
					</table>
			</c:if>
			<div class="col-sm-12" style="margin-bottom: 20px; text-align: center;" align="right">
				<a href="#" class="btn btn-default btn-default"
					style="width: 150px; text-align: center; background-color: black; color: white;">��ü��ǰ�ֹ�</a>&nbsp;
				<a href="#" class="btn btn-default btn-default"
					style="width: 150px; text-align: center;">���û�ǰ�ֹ�</a>
					
					<a href="/shop/home.do?cmd=home" class="btn btn-default" style="width: 150px; text-align: center; right: 0;position: absolute;">���ΰ���ϱ�</a>
					
			</div>
		</div>


		<div class="col-sm-12" style="margin-bottom: 20px">
			<table class=table style="border: 1px solid #ddd;">
				<tr
					style="border: 1px solid #ddd; background-color: #f7f7f7; height: 40px;">
					<th style="vertical-align: middle; border: 1px solid #ddd;">&nbsp;�̿�ȳ�</th>
				</tr>
				<tr style="height: 60px;">
					<td style="vertical-align: middle; border: 1px solid #ddd;"><br>&nbsp;��ٱ���
						�̿�ȳ�<br> <br> &nbsp;�ؿܹ�� ��ǰ�� ������� ��ǰ�� �Բ� �����ϽǼ� ������ ��ٱ���
						���� ���� ������ �ֽñ� �ٶ��ϴ�.<br> &nbsp;�ؿܹ�� ���� ��ǰ�� ��� ������� ��ٱ��Ͽ� ��Ҵٰ�
						�ؿܹ�� ��ٱ��Ϸ� �̵��Ͽ� �����Ͻ� �� �ֽ��ϴ�.<br> &nbsp;�����Ͻ� ��ǰ�� ������ �����Ͻ÷���
						�������� �� [����] ��ư�� �����ø� �˴ϴ�.<br> &nbsp;[���ΰ���ϱ�] ��ư�� �����ø� ������ ���
						�Ͻ� ���ֽ��ϴ�.<br> &nbsp;��ٱ��Ͽ� ���ɻ�ǰ�� �̿��Ͽ� ���Ͻô� ��ǰ�� �ֹ��ϰų� ���ɻ�ǰ����
						����Ͻ� ���ֽ��ϴ�.<br> <br>&nbsp;�������Һ� �̿�ȳ�<br> <br>
						&nbsp;��ǰ�� �������Һ� ������ �����÷��� �������Һ� ��ǰ�� �����Ͽ� [�ֹ��ϱ�] ��ư�� ���� �ֹ�/���� �Ͻø�
						�˴ϴ�.<br> &nbsp;[��ü ��ǰ �ֹ�] ��ư�� �����ø� ��ٱ����� ���о��� ���õ� ��� ��ǰ�� ����
						�ֹ�/������ �̷�����ϴ�.<br> &nbsp;��, ��ü ��ǰ�� �ֹ�/�����Ͻ� ���, ��ǰ�� �������Һ� ������
						������ �� �����ϴ�.<br> <br></td>
				</tr>
			</table>
		</div>
	</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>