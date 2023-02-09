<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<!-- header -->
	<%@ include file='../header.jsp' %>

		<!-- 일단 이상 없음 -->
		<!-- Font Awesome -->
		<link href="/admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

		<!-- NProgress -->
		<link href="/admin/vendors/nprogress/nprogress.css" rel="stylesheet">

		<!-- iCheck -->
		<link href="/admin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

		<!-- bootstrap-progressbar -->
		<link href="/admin/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">

		<!-- JQVMap -->
		<link href="/admin/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>

		<!-- Switchery -->
		<link href="/admin/vendors/switchery/dist/switchery.min.css" rel="stylesheet">

		<style rel="stylesheet">
			
			#fileWrapper {
				height:100%;
				display:flex;
				align-items:center;
				justify-content:center;

			}
			.form-input {
				width:15rem;
				padding:20px;
				background:#fff;
				margin: 0.5rem;
				box-shadow: -3px -3px 7px rgba(94, 104, 121, 0.377),
							3px 3px 7px rgba(94, 104, 121, 0.377);
				}
			.form-input input {
				display:none;
			}
			.form-input label {
				display:block;
				width:45%;
				height:45px;
				margin-left: 25%;
				line-height:50px;
				text-align:center;
				background:#1172c2;

				color:#fff;
				font-size:15px;
				font-family:"Open Sans",sans-serif;
				text-transform:Uppercase;
				font-weight:600;
				border-radius:5px;
				cursor:pointer;
			}

			.form-input img {
				width:100%;
				display:none;

				margin-bottom:30px;
			}
		</style>


		<!-- breadcrumb area start -->
		<div class="breadcrumb-area style-three jarallax" style="background-image:url(images/bg/1.png);">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="breadcrumb-inner">
							<h1 class="page-title">축제 일기 수정</h1>
							<ul class="page-list">
								<li><a href="index">Home</a></li>
								<li>내가 다녀왔던 축제 리뷰 수정하기</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb area End -->

		<!-- 본문 내용 -->
		<!-- page content start -->
		<div class="row" style="width: 80%; margin: 0px auto; margin-top: 10%; text-align: center;">
			<div class="col-md-12 col-sm-12 ">
				<div class="tab-content" id="myTabContent">
					<form action="rUpdateReview" id="rUpdateReview" method="post" enctype="multipart/form-data">
						<input type="hidden" name="rv_no" value="${reviews.rv_no}">
						<!-- (축제 일기) 리뷰 등록 페이지 시작 -->
						<div class="tab-pane active" id="contact" role="tabpanel" aria-labelledby="contact-tab">

							<!-- 글 제목 입력 input 시작 -->
							<div class="form-group row">
								<label class="col-form-label col-md-2 col-sm-2 ">글 제목</label>
								<div class="col-md-10 col-sm-10 ">
									<input type="text" id="rv_title" name="rv_title" class="form-control" placeholder="글 제목을 입력하세요" value="${reviews.rv_title}">
								</div>
							</div>
							<!-- 글 제목 입력 input 끝 -->

							<!-- 글 입력 Text Editor start -->
							<div class="x_content">
								<div id="alerts"></div>
								<!-- 작성 폼 버튼 시작 -->
								<div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-one">

									<div class="btn-group">
										<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i
												class="fa fa-bold"></i></a>
										<a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i
												class="fa fa-italic"></i></a>
										<a class="btn" data-edit="strikethrough" title="Strikethrough"><i
												class="fa fa-strikethrough"></i></a>
										<a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i
												class="fa fa-underline"></i></a>
									</div>

									<div class="btn-group">
										<a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i
												class="fa fa-list-ul"></i></a>
										<a class="btn" data-edit="insertorderedlist" title="Number list"><i
												class="fa fa-list-ol"></i></a>
										<a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i
												class="fa fa-dedent"></i></a>
										<a class="btn" data-edit="indent" title="Indent (Tab)"><i
												class="fa fa-indent"></i></a>
									</div>

									<!-- 텍스트 정렬 버튼 시작 -->
									<div class="btn-group">
										<a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i
												class="fa fa-align-left"></i></a>
										<a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i
												class="fa fa-align-center"></i></a>
										<a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i
												class="fa fa-align-right"></i></a>
										<a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i
												class="fa fa-align-justify"></i></a>
									</div>
									<!-- 텍스트 정렬 버튼 끝  -->

									<!-- 링크 추가/제거 버튼 시작 -->
									<div class="btn-group">
										<a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i
												class="fa fa-link"></i></a>
										<div class="dropdown-menu input-append">
											<input class="span2" placeholder="URL" type="text" data-edit="createLink" />
											<button class="btn" type="button">링크 추가</button>
										</div>
										<a class="btn" data-edit="unlink" title="링크 제거"><i class="fa fa-cut"></i></a>
									</div>
									<!-- 링크 추가/제거 버튼 끝 -->
								</div>
								<!-- 작성 폼 버튼 끝 -->

								<div id="rv_content2" class="editor-wrapper"
									style="height: 500px; border: 1px solid #ced4da; border-radius: 5px; margin-bottom: 20px;">${reviews.rv_content}</div>
												
								<textarea name="descr" id="descr" style="display: none;"></textarea>
								<input type="hidden" id="u_no" name="u_no" value="${sessionScope.u_no}"/>
								<input type="hidden" id="rv_content" name="rv_content"/>

							</div>
							<!-- 글 입력 Text Editor end -->

							<!-- 첨부파일 입력 시작 -->
							<div>🧡 사진 크기는 300MB로 제한됩니다 🧡</div>
							<br/>
							<div class="x_content file-grid" id="fileWrapper">
								<div class="form-input file-list">
									<div class="preview">
									  <img id="file-ip-1-preview">
									</div>
									<label for="file-ip-1">upload</label>
									<input type="file" id="file-ip-1" name="file" accept="image/*" onchange="showPreview(event);" >
								</div>
								<div class="form-input file-list">
									<div class="preview">
									  <img id="file-ip-2-preview">
									</div>
									<label for="file-ip-2">upload</label>
									<input type="file" id="file-ip-2" name="file2" accept="image/*" onchange="showPreview(event);">
								</div>
								<div class="form-input file-list">
									<div class="preview">
									  <img id="file-ip-3-preview">
									</div>
									<label for="file-ip-3">upload</label>
									<input type="file" id="file-ip-3" name="file3" accept="image/*" onchange="showPreview(event);">
								</div>
								<div class="form-input file-list">
									<div class="preview">
									  <img id="file-ip-4-preview">
									</div>
									<label for="file-ip-4">upload</label>
									<input type="file" id="file-ip-4" name="file4" accept="image/*" onchange="showPreview(event);">
								</div>
							</div>
							<!-- 첨부파일 입력 끝 -->
							
							<!-- 전송 버튼 -->
							<button id="resetbtn" class="btn btn-primary" type="reset">초기화</button>
							<input id="submitbtn" class="btn btn-success" type="submit" value="수정">
						</div>
						<!-- (축제 일기) 리뷰 등록 페이지 끝 -->
					</form>
				</div>
			</div>
		</div>
	</div>
		<br />
		<div class="row" style="width: 80%; margin: 0px auto;"></div>

		<!-- newslatter area Start ( 공백용 ) -->
		<div class="newslatter-area pd-top-120">
			<div class="container">
				<div class="newslatter-area-wrap border-tp-solid">
				</div>
			</div>
		</div>
		<!-- newslatter area End -->

		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>

		<!-- Additional plugin js -->
		<script src="/js/jquery-2.2.4.min.js"></script>
		<script src="/js/popper.min.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/jquery.magnific-popup.js"></script>
		<script src="/js/owl.carousel.min.js"></script>
		<script src="/js/wow.min.js"></script>
		<script src="/js/slick.js"></script>
		<script src="/js/waypoints.min.js"></script>
		<script src="/js/jquery.counterup.min.js"></script>
		<script src="/js/imagesloaded.pkgd.min.js"></script>
		<script src="/js/isotope.pkgd.min.js"></script>
		<script src="/js/swiper.min.js"></script>
		<script src="/js/jquery.nice-select.min.js"></script>
		<script src="/js/jquery-ui.min.js"></script>
		<script src="/js/jarallax.min.js"></script>

		<!-- sweet alert -->
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

		
		<!-- jQuery -->
		<script src="/admin/vendors/jquery/dist/jquery.min.js"></script>
		
		<!-- Bootstrap -->
		<script src="/admin/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
		
		<!-- FastClick -->
		<script src="/admin/vendors/fastclick/lib/fastclick.js"></script>

		<!-- bootstrap-progressbar -->
		<script src="/admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
		
		<!-- iCheck -->
		<script src="/admin/vendors/iCheck/icheck.min.js"></script>
		
		<!-- Skycons -->
		<script src="/admin/vendors/skycons/skycons.js"></script>
		
		<!-- Flot -->
		<script src="/admin/vendors/Flot/jquery.flot.js"></script>
		<script src="/admin/vendors/Flot/jquery.flot.pie.js"></script>
		<script src="/admin/vendors/Flot/jquery.flot.time.js"></script>
		<script src="/admin/vendors/Flot/jquery.flot.stack.js"></script>
		<script src="/admin/vendors/Flot/jquery.flot.resize.js"></script>
		
		<!-- Flot plugins -->
		<script src="/admin/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
		<script src="/admin/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
		<script src="/admin/vendors/flot.curvedlines/curvedLines.js"></script>
		
		<!-- DateJS -->
		<script src="/admin/vendors/DateJS/build/date.js"></script>
		
		<!-- JQVMap -->
		<script src="/admin/vendors/jqvmap/dist/jquery.vmap.js"></script>
		<script src="/admin/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
		
		<!-- bootstrap-wysiwyg -->
		<script src="/admin/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
		<script src="/admin/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
		<script src="/admin/vendors/google-code-prettify/src/prettify.js"></script>
		
		<!-- jQuery Tags Input -->
		<script src="/admin/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
		
		<!-- Switchery -->
		<script src="/admin/vendors/switchery/dist/switchery.min.js"></script>
		
		<!-- Select2 -->
		<script src="/admin/vendors/select2/dist/js/select2.full.min.js"></script>
		
		<!-- Parsley -->
		<script src="/admin/vendors/parsleyjs/dist/parsley.min.js"></script>
		
		<!-- Autosize -->
		<script src="/admin/vendors/autosize/dist/autosize.min.js"></script>
		
		<!-- jQuery autocomplete -->
		<script src="/admin/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
		
		<!-- starrr -->
		<script src="/admin/vendors/starrr/dist/starrr.js"></script>
		
		<!-- 내가 만든 파일 -->
		<script src="/js/uploadphotos.js"></script>
		
		<!-- Dropzone.js ( 하단 첨부파일 ) -->
		<script src="/admin/vendors/dropzone/dist/min/dropzone.min.js"></script>
		
		<!-- Custom Theme Scripts (없으면 텍스트 입력 못 함 ㅠ ) -->
		<script src="/admin/build/js/custom.min.js"></script>
		
		<!-- main js -->
		<script src="/js/main.js"></script>

		<script type="text/javascript">

		//이메일 공백 or @ 없이 입력할 시
			$('#submitbtn').click(function() {
				var inputtitle = $("#rv_title").val();			// 제목
				
				if(inputtitle == ""){
					Swal.fire({
						title : '리뷰 등록 불가',
						text  : '제목을 입력해주세요 !',
						icon  : 'error',
						confirmButtonColor: '#d33'
					});
					return false;
				}

				var inputcontent = $("#rv_content").val();		// 내용
				if(inputcontent == ""){
					Swal.fire({
						title : '리뷰 등록 불가',
						text : '내용을 입력해주세요 !',
						icon : 'error',
						confirmButtonColor: '#d33'
					});
					return false;
				}

				// 등록 성공 시
				Swal.fire({
						title : '리뷰 등록 성공',
						text  : '리뷰 등록이 완료되었습니다.😚',
						icon  : 'success',
						confirmButtonColor: '#F0B153'
				}).then((result) => {
					if(result.isConfirmed){
						$("#saveReview").submit()
					}
				});
			}) // end of clickevent()
		
		</script>	
		<script type="text/javascript">
			function showPreview(event){
				if(event.target.files.length > 0){
				var src = URL.createObjectURL(event.target.files[0]);
				var preview = document.getElementById(event.target.id+"-preview");
				preview.src = src;
				preview.style.display = "block";
				}
		  }
		  </script>
		</body>

		</html>