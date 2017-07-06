<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function amountUp(price) {
		var bamount = document.getElementById("bamount");
		bamount.value = parseInt(bamount.value) + 1;
		document.getElementById("total").innerHTML = parseInt(bamount.value);
		+"��";
		document.getElementsByName("totalprice")[0].innerHTML = parseInt(bamount.value)
				* parseInt(price);
		document.getElementsByName("totalprice")[1].innerHTML = parseInt(bamount.value)
				* parseInt(price);

	}
	function amountDown(price) {
		var bamount = document.getElementById("bamount");
		if (bamount.value >  1) {
			bamount.value = parseInt(bamount.value) - 1;
			document.getElementById("total").innerHTML = parseInt(bamount.value);
			+"��";
			document.getElementsByName("totalprice")[0].innerHTML = parseInt(bamount.value)
					* parseInt(price);
			document.getElementsByName("totalprice")[1].innerHTML = parseInt(bamount.value)
					* parseInt(price);
		}
	}
	
	function addCart() {
		var obj= document.getElementById("frm");
		obj.submit();
		
	}
	
	
	
</script>
</head>
<body>
	<jsp:include page="header.jsp" />



	<div class="container" style="margin-top: 100px">
		<div class="row">
			<!-- ��ǰ�̹��� -->
			<form action="/shop/addCart.do?cmd=addCart" id="frm" method="post">
			<div class="col-sm-6">
				<img src="/shop/img/${bean.mainimg}" class="img-responsive"
					style="width: 100%" alt="Image" align="top">
					<input type="hidden" name="mainimg" value="${bean.mainimg}">
			</div>
			<div class="col-sm-1"></div> 
			<!-- �������� ���Ź�ư -->

			<div class="col-sm-5">
				<table class="table">
					<thead>
						<tr>
							<th>${bean.pname}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<!--��ǰ�ɼ�  -->
								<table style="width: 100%">
									<tbody>

										<tr>
											<td colspan="3">���� ����</td>
										</tr>
										<tr>
											<td colspan="3">&nbsp;</td>
										</tr>

										<tr>
											<td colspan="2">��ǰ��</td>

											<td colspan="1" align="right">${bean.pname}<input
												type="hidden" name="pname" value="${bean.pname}"></td>

										</tr>
										<tr>
											<td colspan="3">&nbsp;</td>
										</tr>

										<tr>
											<td colspan="2">Price</td>
											<td colspan="1" align="right">${bean.price}won<input
												type="hidden" name="price" value="${bean.price}"></td>
										</tr>

										<tr>
											<td colspan="3">&nbsp;</td>
										</tr>

										<tr>
											<td colspan="2">Point</td>
											<td colspan="1" align="right">${bean.price/100}(1%)<input
												type="hidden" name="point" value="${bean.price/100}"></td>
										</tr>

										<tr>
											<td colspan="3">&nbsp;</td>
										</tr>

										<form>
											<tr>
												<td>Color</td>
												<td colspan="2" align="right"><select
													class="form-control" id="sel1"
													style="margin-left: 20px; width: 250px">
														<option selected="selected">- [�ʼ�]�ɼ��� ������ �ּ��� -</option>
														<option>------------------------------</option>
														<option>�׷���</option>
														<option>������</option>
														<option>��</option>
												</select></td>
											</tr>

											<tr>
												<td colspan="2">&nbsp;</td>
											</tr>

											<tr>
												<td>Size</td>
												<td colspan="2" align="right"><select
													class="form-control" id="sel2"
													style="margin-left: 20px; width: 250px">
														<option selected="selected">- [�ʼ�]�ɼ��� ������ �ּ��� -</option>
														<option>------------------------------</option>
														<option>S</option>
														<option>M[ǰ��]</option>
												</select></td>
											</tr>

											<tr>
												<td colspan="2">&nbsp;</td>
											</tr>
										</form>

									</tbody>


								</table>




							</td>
						</tr>
						<tr>
							<td>
								<table>
									<tr>
										<td colspan="5">&nbsp;</td>
									</tr>


									<tr>
										<td style="vertical-align: middle; text-align: left;">${bean.pname}</td>
										<td colspan="3" style="vertical-align: middle;" align="center">
											<div class="col-sm-3" align="right" style="padding: 0;">

												<span><input type="text" name="bamount" id="bamount"
													style="width: 20px; height: 30px" value="1"></span>

											</div>
											<div class="col-sm-3" align="center"
												style="padding: 0; margin: 0px; width: 30px">
												<a href="javascript:amountUp(${bean.price})"
													class="btn btn-xs btn-default"> <span
													class="glyphicon glyphicon-chevron-up" id="up"></span>
												</a><br> <a href="javascript:amountDown(${bean.price})"
													class="btn btn-xs btn-default"><span
													class="glyphicon glyphicon-chevron-down" id="down"></span></a>

											</div>
											<div class="col-sm-3" align="left"
												style="padding: 0; margin-top: 7px">
												<a href="#" class="btn btn-xs btn-default"> <span
													class="glyphicon glyphicon-remove"></span>
												</a>
											</div>

										</td>

										<td style="vertical-align: middle; text-align: right;"><span
											name="totalprice">${bean.price}</span>won</td>
									</tr>
									<tr>
										<td colspan="5">&nbsp;</td>
									</tr>

									<tr>
										<td colspan="5">&nbsp;</td>
									</tr>
									<tr>
										<td colspan="5" align="right">total:<span
											name="totalprice">${bean.price}</span>won ( <span id="total">1��</span>
											)
										</td>
									</tr>
									<tr>
										<td colspan="5">&nbsp;</td>
									</tr>
									<tr>

										<td style="width: 200px;"><a href="#"
											class="btn btn-block btn-default"
											style="background-color: black; color: white;">BUY IT NOW
										</a></td>
										<td>&nbsp;</td>
										<td style="width: 200px;"><a href="javascript:addCart()"
											class="btn btn-block btn-default">ADD CART</a></td>
										<td>&nbsp;</td>
										<td style="width: 200px;"><a href="#"
											class="btn btn-block btn-default">WISH LIST</a></td>
									</tr>
								</table>
							</td>
						</tr>

					</tbody>
				</table>


			</div>
			</form>

			<div class="col-sm-12" style="height: 150px"></div>
			<!-- ���̱����� ��ǰ -->
			<div class="col-sm-12"
				style="border: 1px solid #ccc; margin-bottom: 100px">
				<div class="row" style="margin-bottom: 10px; margin-top: 10px">
					<div class="col-sm-12">
						<img src="https://placehold.it/150x8?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
					</div>
				</div>
				<div class="row">

					<div class="col-sm-2">
						<img src="https://placehold.it/150x180?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
						<p>Partner 1</p>
					</div>
					<div class="col-sm-2">
						<img src="https://placehold.it/150x180?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
						<p>Partner 2</p>
					</div>
					<div class="col-sm-2">
						<img src="https://placehold.it/150x180?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
						<p>Partner 3</p>
					</div>
					<div class="col-sm-2">
						<img src="https://placehold.it/150x180?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
						<p>Partner 3</p>
					</div>
					<div class="col-sm-2">
						<img src="https://placehold.it/150x180?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
						<p>Partner 3</p>
					</div>
					<div class="col-sm-2">
						<img src="https://placehold.it/150x180?text=IMAGE"
							class="img-responsive" style="width: 100%" alt="Image">
						<p>Partner 3</p>
					</div>
				</div>
			</div>
			<!-- ���� ���� �� -->
			<!--��ǰ���� tap -->
			<div class="col-sm-12">
				<ul class="nav nav-pills nav-justified"
					style="border: 1px solid #ccc; margin-bottom: 200px">
					<li style="border: 1px solid #ccc; background-color: #f2f2f2;"><a
						href="#" style="color: black;">��ǰ����</a></li>
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">�̿밡�̵�</a></li>
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">���ı�</a></li>
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">��ǰ����</a></li>
				</ul>
			</div>

			<!--�̿밡�̵� tap -->
			<div class="col-sm-12">
				<ul class="nav nav-pills nav-justified"
					style="border: 1px solid #ccc; margin-bottom: 200px">
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">��ǰ����</a></li>
					<li style="border: 1px solid #ccc; background-color: #f2f2f2;"><a
						href="#" style="color: black;">�̿밡�̵�</a></li>
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">���ı�</a></li>
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">��ǰ����</a></li>
				</ul>
			</div>

			<!--���ı�tap -->
			<div class="col-sm-12">
				<ul class="nav nav-pills nav-justified"
					style="border: 1px solid #ccc; margin-bottom: 200px">
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">��ǰ����</a></li>
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">�̿밡�̵�</a></li>
					<li style="border: 1px solid #ccc; background-color: #f2f2f2;"><a
						href="#" style="color: black;">���ı�</a></li>
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">��ǰ����</a></li>
				</ul>
			</div>

			<!-- ���ı� -->
			<div class="col-sm-12" style="margin-bottom: 100px">

				<h2 align="center">R E V I E W</h2>
				<p align="center" style="margin-bottom: 100px">�����ı� �ۼ��� ��ǰ ���������
					�����ϸ�, ��ǰ �̹����� �ø��� ��� �������� ���޵��� �ʽ��ϴ�. (�ŷ�ó �� ����� �ڵ�����)</p>
				<br>
				<table class="table">
					<thead>
						<tr>
							<th style="width: 5%; text-align: center;">no</th>
							<th style="width: 70%; text-align: center;">subject</th>
							<th style="width: 10%; text-align: center;">writer</th>
							<th style="width: 10%; text-align: center;">date</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="text-align: center;">1</td>
							<td><a data-toggle="collapse" href="#rvcollapse1"
								style="color: black;">���ƿ�</a>
								<div id="rvcollapse1" class="panel-collapse collapse"
									style="margin-top: 15px;">
									<ul class="list-group">
										<li class="list-group-item" style="border: 0">���Ÿ����մϴ�.</li>
									</ul>
									<div align="right">
										<a href="#" class="btn btn-default">�Խñ� �����ϱ�</a>
									</div>
								</div></td>
							<td style="text-align: center;">����</td>
							<td style="text-align: center;">2017-07-03</td>
						</tr>


						<tr>
							<td>Mary</td>
							<td>Moe</td>
							<td>mary@example.com</td>
							<td>mary@example.com</td>
						</tr>
						<tr>
							<td>July</td>
							<td>Dooley</td>
							<td>july@example.com</td>
							<td>july@example.com</td>
						</tr>
					</tbody>
				</table>

				<!-- ����¡ -->
				<div class="container" align="center">
					<ul class="pagination">
						<li><a href="#">&lsaquo;</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&rsaquo;</a></li>
					</ul>
				</div>




			</div>









			<!--��ǰ����tap -->
			<div class="col-sm-12">
				<ul class="nav nav-pills nav-justified"
					style="border: 1px solid #ccc; margin-bottom: 200px">
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">��ǰ����</a></li>
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">�̿밡�̵�</a></li>
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">���ı�</a></li>
					<li style="border: 1px solid #ccc; background-color: #f2f2f2;"><a
						href="#" style="color: black;">��ǰ����</a></li>
				</ul>

				<!-- ��ǰ���� -->

				<div class="col-sm-12" style="margin-bottom: 100px">

					<h2 align="center">Q & A</h2>
					<p align="center" style="margin-bottom: 100px">��ǰ�� ���� �ñ��� ����
						������ �ּ���.</p>
					<br>
					<table class="table">
						<thead>
							<tr>
								<th style="width: 5%; text-align: center;">no</th>
								<th style="width: 70%; text-align: center;">subject</th>
								<th style="width: 10%; text-align: center;">writer</th>
								<th style="width: 10%; text-align: center;">date</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td style="text-align: center;">1</td>
								<td><a data-toggle="collapse" href="#qacollapse1"
									style="color: black;">���ƿ�</a>
									<div id="qacollapse1" class="panel-collapse collapse"
										style="margin-top: 15px;">
										<ul class="list-group">
											<li class="list-group-item" style="border: 0">
												<form action="">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="glyphicon glyphicon-lock"></i></span> <input
															id="password" type="password" class="form-control"
															name="password" placeholder="Password"
															style="width: 200px"> <a href="#"
															class="btn btn-default">Ȯ��</a>
													</div>
												</form>
											</li>
										</ul>

									</div></td>
								<td style="text-align: center;">����</td>
								<td style="text-align: center;">2017-07-03</td>
							</tr>


							<tr>
								<td>Mary</td>
								<td>Moe</td>
								<td>mary@example.com</td>
								<td>mary@example.com</td>
							</tr>
							<tr>
								<td>July</td>
								<td>Dooley</td>
								<td>july@example.com</td>
								<td>july@example.com</td>
							</tr>
						</tbody>
					</table>

					<!-- ����¡ -->
					<div class="container" align="center">
						<ul class="pagination">
							<li><a href="#">&lsaquo;</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&rsaquo;</a></li>
						</ul>
					</div>




				</div>

			</div>



			<!-- �����̳ʳ�  -->


		</div>
	</div>





	<jsp:include page="footer.jsp" />
</body>
</html>