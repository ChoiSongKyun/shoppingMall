<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp" />


	<div class="container" style="margin-top: 100px">
		<div class="row">
			<!-- ��ǰ�̹��� -->
			<div class="col-sm-6">
				<img src="https://placehold.it/150x180?text=IMAGE"
					class="img-responsive" style="width: 100%" alt="Image" align="top">
			</div>
			<div class="col-sm-1"></div>
			<!-- �������� ���Ź�ư -->

			<div class="col-sm-5">
				<table class="table">
					<thead>
						<tr>
							<th>����� �����</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<!--��ǰ�ɼ�  -->
								<table>
									<tbody>

										<tr>
											<td colspan="2">��Ƽ� ������ ������ �ٴϸ鼭 ��ġ�� �����ƿ�</td>
										</tr>
										<tr>
											<td colspan="2">&nbsp;</td>
										</tr>

										<tr>
											<td>��ǰ��</td>
											<td colspan="1" align="right">���ھ� �����</td>
										</tr>
										<tr>
											<td colspan="2">&nbsp;</td>
										</tr>

										<tr>
											<td>Price</td>
											<td colspan="1" align="right">32,000 won</td>
										</tr>

										<tr>
											<td colspan="2">&nbsp;</td>
										</tr>

										<tr>
											<td>Point</td>
											<td colspan="1" align="right">320��(1%)</td>
										</tr>

										<tr>
											<td colspan="2">&nbsp;</td>
										</tr>

										<form>
											<tr>
												<td>Color</td>
												<td colspan="1" align="right"><select
													class="form-control" id="sel1" style="margin-left: 20px;">
														<option selected="selected">- [�ʼ�]�ɼ��� ������ �ּ��� -</option>
														<option>------------------------------</option>
														<option>�׷���</option>
														<option>������</option>
														<option>����</option>
												</select></td>
											</tr>

											<tr>
												<td colspan="2">&nbsp;</td>
											</tr>

											<tr>
												<td>Size</td>
												<td colspan="1" align="right"><select
													class="form-control" id="sel2" style="margin-left: 20px;">
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
										<td colspan="5" align="right">total: 0 (0��)</td>
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
										<td style="width: 200px;"><a href="#"
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
						style="color: black;">�����ı�</a></li>
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
						style="color: black;">�����ı�</a></li>
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">��ǰ����</a></li>
				</ul>
			</div>

			<!--�����ı�tap -->
			<div class="col-sm-12">
				<ul class="nav nav-pills nav-justified"
					style="border: 1px solid #ccc; margin-bottom: 200px">
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">��ǰ����</a></li>
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">�̿밡�̵�</a></li>
					<li style="border: 1px solid #ccc; background-color: #f2f2f2;"><a
						href="#" style="color: black;">�����ı�</a></li>
					<li style="border: 1px solid #ccc;"><a href="#"
						style="color: black;">��ǰ����</a></li>
				</ul>
			</div>

			<!-- �����ı� -->
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
						style="color: black;">�����ı�</a></li>
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
													<div class="input-group"> <span
														class="input-group-addon"><i
															class="glyphicon glyphicon-lock"></i></span> <input
														id="password" type="password" class="form-control"
														name="password" placeholder="Password"
														style="width: 200px">
													<a href="#" class="btn btn-default">Ȯ��</a>
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