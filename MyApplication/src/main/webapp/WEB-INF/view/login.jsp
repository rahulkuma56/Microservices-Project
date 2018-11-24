<!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<title>Micro Services Example| 
	</title>
<meta name="description"
	content="Get customized website designing & software solution from best software development company in Noida along with full range of IT services like web designing, mobile app & ERP development etc. We are also leading website designing & SEO company in Noida." />
<meta name="keywords"
	content="Software Development Company in Noida, Web designing company in Noida, SEO Company Noida, Web Development Company in Noida, Top IT company in Noida, SEO Company in Delhi NCR, top software development companies in Noida, mobile app development in Noida" />

<meta name="google-site-verification"
	content="t60Z6bzhgIUhT59sSYtzL9ntSQVnS8PYlVDNk1qQ2Sg" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="http://www.fadsan.com/images/favicon.ico"
	rel="shortcut icon" type="image/x-icon">
<link rel="canonical" href="http://www.fadsan.com" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/cssnew.css" />
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!--<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">-->
<link href="css/animate.css" rel="stylesheet" />
<link href="css/n-bar.css" rel="stylesheet" />
<link href="css/sidebar.css" rel="stylesheet" />
<link href="css/contact_plugin.css" rel="stylesheet" />
<!--<link href="css/footer.css" rel="stylesheet" />-->
<link href="css/forfixed-header.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style_common.css" />
<link rel="stylesheet" type="text/css" href="css/style4.css" />
<link rel="stylesheet" href="css/slider_contact.css" />
<link rel="stylesheet" href="css/fadsan_new26oct.css" />
<!-- below line is used for google font-->
<link href='http://fonts.googleapis.com/css?family=Roboto+Slab'
	rel='stylesheet' type='text/css'>
<script src="js/slider.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-112500545-1"></script>
<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-112500545-1');
	</script>
<style>
.opacity0 {
	opacity: 0;
}

.opacity1 {
	opacity: 1;
}

.hide {
	visibility: hidden;
}

.rotater>a {
	color: #fff;
}

.banreplic>img {
	width: 341px;
}
</style>
</head>

<body onload="myFunction();">

	<div id="top"></div>
	<div id="first">
		<div class="icon_box">
			<div id="bottom">
				<div class="menu active">
					<div class="btn trigger">
						<span class="line"></span>
					</div>

				</div>
			</div>

		</div>

		<div id="particles"></div>
		<div onclick="myFunction()" id="intro"
			class="btn btn-icon trigger float hide-btn slide_btn">
			<!-- <i class="fa fa-list round_circle "></i>-->
			<div id="nav-icon1" class="newiconrt">
				<span></span> <span></span> <span></span>
			</div>
			<p class="icon_txt icon_text2" style="margin-top: -294px;">Menu</p>
		</div>
		<div id="intro"
			style="position: absolute; top: 90px; left: 802px; display: block; display: none;"
			class="slide_out news">
			<div class="btn btn-icon float">
				<a href=""> <i class="fa fa-home round_circle"></i>
					<p class="icon_txt" style="">Home</p>
				</a>
			</div>
			<div id="float" class="btn btn-icon float ">
				<a href="/register"> <i class="fa fa-users round_circle"></i>
					<p class="icon_txt">Register</p>
				</a>
			</div>
			<div class="btn btn-icon float">
				<a href="Technologies.php"> <i class="fa fa-code round_circle"
					style="font-size: 33px !important; position: relative; top: -9px;"></i>
					<!--<i class="fa fa-code round_circle" style="font-size: 33px !important;position: relative;top: -9px;padding-bottom: -23px;"></i>-->
					<p class="icon_txt" style="margin-top: -8px;">Technology</p>
				</a>
			</div>
			<div class="btn btn-icon float">
				<a href="services.php"> <i class="fa fa-laptop round_circle"></i>
					<p class="icon_txt">Services</p>
				</a>
			</div>
			<div class="btn btn-icon float">
				<a href="Products.php"> <i class="fa fa-dropbox round_circle"></i>
					<p class="icon_txt">Product</p>
				</a>
			</div>
			<div class="btn btn-icon float">
				<a href="portfolio.php"> <i class="fa fa-diamond round_circle"></i>
					<p class="icon_txt">Portfolio</p>
				</a>
			</div>
			<div class="btn btn-icon float">
				<a href="gurantee.php"> <i class="fa fa-gg round_circle"></i>
					<p class="icon_txt">Gurantee</p>
				</a>
			</div>
			<div class="btn btn-icon float">
				<a href="Packages.php"> <i class="fa fa-suitcase round_circle"></i>
					<p class="icon_txt">Packages</p>
				</a>
			</div>
			<div class="btn btn-icon float">
				<a href="ContactUs.php"> <i class="fa fa-phone round_circle"></i>
					<p class="icon_txt">Contact</p>
				</a>
			</div>
		</div>
		<div id="intro">
			<a><p class="title">Micro Services Example Project</p></a>
		</div>
		<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-user">
					
					<div class="form-group">
						<label class="control-label col-md-3"></label>
						 <div class="col-md-7">
							Username: <input type="text" class="form-control" name="username"
								value="${user.username }" placeholder="Username" />
						</div>
					</div>
					<%--<div class="form-group">
						<label class="control-label col-md-3">First Name</label>
						<div class="col-md-7">
							First Name: <input type="text" class="form-control" name="firstname"
								value="${user.firstname }" placeholder="First Name" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Last Name</label>
						<div class="col-md-7">
							Last Name: <input type="text" class="form-control" name="lastname"
								value="${user.lastname }" placeholder="Last Name" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Age </label>
						<div class="col-md-3">
							Age: <input type="text" class="form-control" name="age"
								value="${user.age }" placeholder="age" />
						</div>
					</div> --%>
					<div class="form-group">
						<label class="control-label col-md-3"></label>
						<div class="col-md-7">
							Password:<input type="password" class="form-control" name="password"
								value="${user.password }" placeholder="Password"/>
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="LogIn" />
					</div>
				</form>
			</div>

	</div>

	<!--</div>-->

	

		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	</footer>



	<!--<script src="js/wow.min.js" rel></script>-->
	<!--<script src="js/scrollindicator.jquery.min.js"></script>
    <script src="js/functions.js"></script>-->
	<!--<script src="jquery.particleground.js"></script>-->

	<script>
        new WOW().init();
    </script>

	<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
	<script src='js/part.js'></script>
	<script src='js/demo.js'></script>
	<script>
        $(document).ready(function () {
            $(".trigger").click(function () {
                $(".menu").toggleClass("active");
            });
        });
    </script>
	<script>
$(document).ready(function(){
    $("#nav-icon1").click(function(){
        $(".news").toggle();
    });
});
</script>


	<script>

        $("#left").hide();
        $("#right").hide();
        $("#bottom").hide();



     /* $("#intro").click(function () {

            $("#intro").fadeOut("slow").addClass("opacity0");

            $("#bottom").show();
 });
*/

    </script>

	<script>

    </script>

	<script>openNav1();</script>

	<!--<script>
function myFunction() {
    var x = document.getElementById("hide_data");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
</script>-->

	<script type="text/javascript">
$(document).ready(function(){
    // Display alert message after hiding paragraphs
    $(".intro").click(function(){
       $("#intro").toggle('new');

   });
});
</script>


	<script type="text/javascript">`
    $('.slide_btn').click(function(){
  $('.slide_out').toggleClass('on');
});

</script>


	<script type="text/javascript">
        $(document).ready(function(){
    $('#nav-icon1').click(function(){
        $(this).toggleClass('open');
    });
});

    </script>

</body>
</html>