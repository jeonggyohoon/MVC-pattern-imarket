<%@page import="java.util.List"%>
<%@page import="com.main.model.t_iteminfoDAO"%>
<%@page import="com.main.model.t_iteminfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/itemPhotoDetail_young.css" />
</head>
<body class="hoian-kr">
	<noscript>
		<img height="1" width="1" style="display: none" alt="facebook"
			src="https://www.facebook.com/tr?id=992961397411651&ev=PageView&noscript=1" />
	</noscript>

	<script>
    !function(t,e,n,s,a,c,i,o,p){t.AppsFlyerSdkObject=a,t.AF=t.AF||function(){(t.AF.q=t.AF.q||[]).push([Date.now()].concat(Array.prototype.slice.call(arguments)))},t.AF.id=t.AF.id||i,t.AF.plugins={},o=e.createElement(n),p=e.getElementsByTagName(n)[0],o.async=1,o.src="https://websdk.appsflyer.com?"+(c.length>0?"st="+c.split(",").sort().join(",")+"&":"")+(i.length>0?"af_id="+i:""),p.parentNode.insertBefore(o,p)}(window,document,"script",0,"AF","banners",{banners: {key: "629f6f7a-a2a6-49c0-8d27-ffa48df1cd0e"}})
    AF('banners', 'showBanner')
</script>

	<%
	int item_idx = Integer.parseInt(request.getParameter("item_idx"));
	t_iteminfoDTO dto = new t_iteminfoDTO(item_idx);
	t_iteminfoDAO dao = new t_iteminfoDAO();
	List<t_iteminfoDTO> item_list = new t_iteminfoDAO().showItemDetail(dto);
	%>


	<h1 class="sr-only"><%=item_list.get(0).getItem_name()%></h1>
	<button class="close-btn" onclick="javascript:history.back();	">
		<img class="search-delete-icon" alt="Delete"
			src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/delete-595c17c4e177331e2453c8651174208e4f764baecaf005d5655ecf0475e80674.svg">
	</button>
	<section id="images-full">
		<div id="image-slider-full">
			<div class="slider-wrap">
				<div class="slider-full slick-initialized slick-slider"
					data-smb-id="">
					<div class="slick-list draggable">
						<div class="slick-track"
							style="opacity: 1; width: 459px; transform: translate3d(0px, 0px, 0px);">
							<div class="slick-slide slick-current slick-active"
								data-slick-index="0" aria-hidden="false" style="width: 459px;">
								<div>
									<div style="width: 100%; display: inline-block;">
										<div class="image-wrap" data-image-id="-1917813038"
											data-image-index="1">
											<img src=".././photo/<%=item_list.get(0).getItem_photo()%>"
												class="portrait text-light-gray">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>






	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","992961397411651");fbq("set","agent","tmgoogletagmanager","992961397411651");fbq("track","PageView");</script>
	<div id="fb-root" class=" fb_reset">
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div></div>
		</div>
	</div>
</body>
</html>