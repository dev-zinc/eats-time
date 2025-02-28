<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon"
	href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/member/productUploadForm.css">
<title>이츠타임 - 상품 등록</title>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="css-pculus">
		<div class="css-o5dw7d">상품 등록</div>
		<div class="css-mhmtvt">
			<div class="css-rb0i47">
				<span class="css-qq9ke6">*</span> 필수입력사항
			</div>
			<form
				action="${pageContext.request.contextPath}/productUploadOk.product"
				name="productUploadForm" method="get">
				<div class="css-y8aj3r">
					<!-- 상품명 -->
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">상품명<span class="css-qq9ke6">*</span></label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<input data-testid="input-box" id="memberId" name="productName"
										placeholder="상품명을 입력해주세요" type="text" required=""
										class="css-u52dqk" value="">
								</div>
							</div>
						</div>
					</div>

					<!-- 판매가격 -->
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">판매 가격<span class="css-qq9ke6">*</span></label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<input type="text" id="price" name="productPrice"
										placeholder="판매 가격을 입력해주세요" autocomplete="off"
										class="css-u52dqk" value="">
								</div>
							</div>
						</div>
					</div>

					<!-- 판매 수량 -->
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">판매 수량<span class="css-qq9ke6">*</span></label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<input type="text" id="sellcount" name="productStock"
										placeholder="판매 가능한 수량을 입력해주세요" autocomplete="off"
										class="css-u52dqk" value="">
								</div>
							</div>
						</div>
					</div>

					<!-- 유통 기간 -->
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">유통 기간<span class="css-qq9ke6">*</span></label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">
									<p>
										<input class="css-u52dqk" type="date" value="sysdate"
											id="productExpirationDate" name="productExpirationDate">
									</p>
								</div>
							</div>
						</div>
					</div>


					<!-- 판매 유형 -->
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">판매 유형<span class="css-qq9ke6">*</span></label>
						</div>
						<div class="css-82a6rk">
							<div class="css-14wodj6"
								style="display: flex; justify-content: flex-start;">
								<label class="css-z9g6s0" for="delivery"
									style="padding-right: 40px;"> <input id="delivery"
									name="productCategory" type="radio" class="css-1pes2r6" value="true">
									<span class="css-198i9ca" id="deliveryspan">
										<div class="css-1dahn5m" id="divdelivery"></div>
								</span> <span class="css-mgd87h">배송</span>
								</label> <label class="css-z9g6s0" for="pickup"> <input
									id="pickup" name="productCategory" type="radio" class="css-1pes2r6"
									value="false"> <span class="css-198i9ca" id="pickupspan">
										<div class="css-1dahn5m" id="divpickup"></div>
								</span> <span class="css-mgd87h">픽업</span>
								</label>
							</div>
						</div>
					</div>

					<!-- 배송픽업주소 -->
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">배송&픽업주소<span
								class="css-qq9ke6">*</span></label>
						</div>
						<div style="display: flex; width: 77%;">
							<div class="css-82a6rk">
								<div class="css-jmalg">
									<div class="css-176lya2">
										<input style="width: 90%" id="address" name="productAddress"
											placeholder="배송이나 픽업 관련 주소를 입력해주세요" type="text"
											autocomplete="off" class="css-u52dqk" value="" readonly>
									</div>
								</div>
							</div>

							<button class="css-ufulao e4nu7ef3" type="button"
								id="addressSearch">
								<span class="css-ymwvow e4nu7ef1">검색</span>
							</button>
						</div>
					</div>

					<!-- 상세주소 -->
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">상세주소<span class="css-qq9ke6">*</span></label>
						</div>
						<div style="display: flex; width: 77%;">
							<div class="css-82a6rk">
								<div class="css-jmalg">
									<div class="css-176lya2">
										<input style="width: 90%" id="addressDetail"
											name="productAddressDetail" placeholder="상세주소를 입력해주세요" type="text"
											autocomplete="off" class="css-u52dqk" value="">
									</div>
								</div>
							</div>

							<button class="css-ufulao e4nu7ef3" type="button" id="checkEmail"
								style="visibility: hidden;">
								<span class="css-ymwvow e4nu7ef1">검색</span>
							</button>
						</div>
					</div>

					<!-- 상품 이미지  -->
					<div class="css-1pjgd36">
						<div class="css-1y8737n">
							<label class="css-1obgjqh">상품 이미지<span class="css-qq9ke6">*</span></label>
						</div>
						<div class="css-82a6rk">
							<div class="css-jmalg">
								<div class="css-176lya2">

									<label for="attach">

										<div class="css-u52dqk">
											<span class="css-ymwvow">상품 사진을 등록해주세요</span>
											<p class="css-imagerule">* 이미지 규격 : 123x123</p>
										</div>

									</label> <input type="file" id="attach" style="display: none;">

									<div class="image">
										<div class="cancel" style="display: none";>X</div>
										<!--이미지를 없애는 X 버튼-->
									</div>

								</div>
							</div>
						</div>
					</div>

					<div class="css-1eo0fey"></div>
				</div>
				<div class="css-137ca2h">
					<button class="css-18m884r" type="button" width="240" height="56"
						radius="3" onclick="send()">
						<span class="css-ymwvow">등록하기</span>
					</button>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/productUploadForm.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	/* 주소 api */
	window.onload = function() {
		document
				.getElementById("addressSearch")
				.addEventListener(
						"click",
						function() { //주소입력칸을 클릭하면
							//카카오 지도 발생
							new daum.Postcode(
									{
										oncomplete : function(data) { //선택시 입력값 세팅
											document.getElementById("address").value = data.address; // 주소 넣기
											document.getElementById(
													"addressDetail").focus(); //상세입력 포커싱
										}
									}).open();
						});
	}

	/* 유효성 검사 */
	function send() {

		document.productUploadForm.submit();
	}
</script>

</html>