<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <%@ page buffer="128kb" %> --%>

<!-- header S -->
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0,minimum-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" type="text/css" href="<c:out value='${pageContext.request.contextPath}'/>/resources/css/bootstrap-grid.css" >
<link rel="stylesheet" type="text/css" href="<c:out value='${pageContext.request.contextPath}'/>/resources/css/layout.css" >
<link rel="stylesheet" type="text/css" href="<c:out value='${pageContext.request.contextPath}'/>/resources/css/style.css" >
<link rel="stylesheet" type="text/css" href="<c:out value='${pageContext.request.contextPath}'/>/resources/css/main_header.css" >
<link rel="stylesheet" type="text/css" href="<c:out value='${pageContext.request.contextPath}'/>/resources/css/main_footer.css" >
<link rel="stylesheet" type="text/css" href="<c:out value='${pageContext.request.contextPath}'/>/resources/css/main_style.css" >

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-grid.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main_header.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main_footer.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main_style.css" />


<script src="${pageContext.request.contextPath}/resources/js/jquery.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.4.1.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fancybox.js" charset="utf-8"></script>


<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js" charset="utf-8"></script>







<!-- header E -->
<script type="text/javascript">
	function go(){
		location.href="single.sbox"
	}
	function togo(){
		location.href="shopboxlist.sbox"
	}
	function idDelete(){
		location.href="idDelete.sbox"
	}
	
	function userList(){
		location.href="userList.ulist"
	}
	
	function shopList(){
		location.href="list.blist"
	}
	
	function gocum(){
		location.href="list.nt"
	}
	
	function OrderList(){
		location.href="Ordlist.sbox"
	}
	
	function login(){
		location.href="login.ulist"
	}
	
	function report(){
		var num = document.getElementById("num").value;
		var id = document.getElementById("id").value;
		
		//alert(num);
		//alert(id);
		
		location.href="benList.ben?num="+num+"&id="+id
		
		
	}
	
	function test99(){
		location.href="test99.ben";
	}
	
	
</script>



<!-- header menu -->
<div class="header_bg">
	<div class="top_munu">
		<div class="container-lg">
			<ul>
				<%String id = (String)session.getAttribute("id");
					if(session.getAttribute("loginInfo")==null){    	
						out.print("<li><a href='javascript:void(0);' onClick='login()'><span>?????????</span></a></li><li><a href='InsertUser.ulist'><span>????????????</span></a></li>");
				    }
					else if(id.equals("admin")){
						out.print("<li><a href='logout.ulist'><span>????????????</span></a></li><li><a href='SelectUser.ulist'>??? ??????</a></li><li><a href='userList.ulist'><span>????????? ??????</span></a></li>");
					}
				    else{
				    	out.print("<li><a href='logout.ulist'><span>????????????</span></a></li><li><a href='SelectUser.ulist'>??? ??????</a></li>");
				    }
				%>
				<!-- <li><a href="javascript:void(0);" onClick="login()"><span>?????????</span></a></li>
				<li><a href="InsertUser.ulist"><span>????????????</span></a></li> -->
				
				<li><a href="javascript:void(0);" onClick="togo()"><span>????????????</span></a></li>
				<li><a href="javascript:void(0);" onClick="OrderList()"><span>????????????</span></a></li>
			</ul>
		</div>
	</div>
	<header class="dark container-lg">
		<nav role="navigation">
			<a href="javascript:void(0);" class="ic menu" tabindex="1">
			  <span class="line"></span>
			  <span class="line"></span>
			  <span class="line"></span>
			</a>
			<a href="javascript:void(0);" class="ic close"></a>
	
			<%-- <a href="" class="d_mo_only"><img src="${pageContext.request.contextPath}/resources/logo.png" alt="" style="height: 3.8rem;padding: 0.2rem 0;"></a> --%>     
			<a href="main.jsp" class="d_mo_only ysy_logo"><img src="${pageContext.request.contextPath}/resources/img/logo.svg" alt="" style="height: 3.8rem;padding: 0.9rem 0;"></a>     
			<a href="main.jsp" class="d_pc_only ysy_logo"><img src="${pageContext.request.contextPath}/resources/img/logo.svg" alt="" style="height: 3.8rem;padding: 0.7rem 0;"></a>      
			<style>
				ul.main-nav > li ul.sub-menu-lists li > span {font-size: 11px;text-align: center;color: #b1b1b1;}		
				@media (max-width: 1500px){
					.main-nav > .top-level-link:last-child {/* margin-right: 90px; */transition:all 0.3s;}
				}
			</style>
			<ul class="main-nav">
				<li class="top-level-link">
					<a class="mega-menu"><span>????????? ????????? </span><span style="font-size: 10px;text-align: center">Yoon's Boutique</span></a>
					<div class="sub-menu-block">
						<ul class="sub-menu-lists">
							<li><a href="">Boutique ??????</a><span>Introduce</span></li>
							<li><a href="">????????? ???</a><span>Getting Here</span></li>
						</ul>
					</div>
				</li>
				<li class="top-level-link">
					<a class="mega-menu"><span>????????? </span><span style="font-size: 10px;text-align: center">Outer</span></a>
					<div class="sub-menu-block">
						<ul class="sub-menu-lists">
							<li><a href="list.blist">????????????</a><span>Leather</span></li>
							<li><a href="list.blist">?????????</a><span>Denim</span></li>
							<li><a href="list.blist">??????</a><span>Bubble jacket</span></li>							
							<li><a href="list.blist">?????????</a><span>Cardigan</span></li>
						</ul>
					</div>
				</li>
				<li class="top-level-link">
					<a class="mega-menu"><span>?????? </span><span style="font-size: 10px;text-align: center">Top</span></a>
					<div class="sub-menu-block">
						<ul class="sub-menu-lists">
							<li><a href="#">??????</a><span>Shirt</span></li>
							<li><a href="#">?????????</a><span>T-shirt</span></li>
							<li><a href="#">??????</a><span>Knit</span></li>
						</ul>
					</div>
				</li>
				<li class="top-level-link">
					<a class="mega-menu"><span>?????? </span><span style="font-size: 10px;text-align: center">Bottom</span></a>
					<div class="sub-menu-block">
						<ul class="sub-menu-lists">
							<li><a href="#">?????????</a><span>Denim jean</span></li>
							<li><a href="#">?????????</a><span>Cotton pent</span></li>
							<li><a href="#">????????????</a><span>Leather trousers</span></li>							
							<li><a href="#">?????????</a><span>Leggings</span></li>
						</ul>
					</div>
				</li>
				<li class="top-level-link">
					<a class="mega-menu"><span onclick="location.href='List.cmu?type=all'">???????????? </span><span style="font-size: 10px;text-align: center">Community</span></a>
					<div class="sub-menu-block">
						<ul class="sub-menu-lists">
							<li><a href="list.nt">????????????</a><span>Notice</span></li>
							<li><a href="list.bd">??????/??????</a><span>Q&A</span></li>
							<li><a href="List.cmu?type=all">???????????????</a><span>Free Board</span></li>
							<li><a href="List.cmu?type=men">???????????????</a><span>Men Board</span></li>
							<li><a href="List.cmu?type=girl">???????????????</a><span>Girl Board</span></li>
						</ul>
					</div>
				</li>
			</ul>
		</nav>
	</header>
</div>