<!doctype html>
<html class="no-js" lang="en">
	<jsp:include page="partials/head.jsp" />

	<body data-spy="scroll" data-offset="0" data-target="#navigation">
		<jsp:include page="partials/header.jsp" />

		<section id="home" name="home"></section>
		<div id="headerwrap">
			<div class="container">
				<div class="row centered">
					<div class="col-lg-12">
					<h1>Welcome To <b>Spacecard!</b></h1>
					<h3>Create awesome Postcards.</h3>
					<br>
					</div>

					<div class="col-lg-2">
						<h5>Amazing Results</h5>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
						<img class="hidden-xs hidden-sm hidden-md" src="assets/img/arrow1.png">
					</div>
					<div class="col-lg-8">
						<img class="img-responsive" src="assets/img/space1.jpg" alt="">
					</div>
					<div class="col-lg-2">
						<br>
						<img class="hidden-xs hidden-sm hidden-md" src="assets/img/arrow2.png">
						<h5>Awesome Design</h5>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
					</div>
				</div>
			</div> <!--/ .container -->
		</div><!--/ #headerwrap -->

	  <!-- <nav class="top-bar" data-topbar="">
	    <ul class="title-area">
	      <li class="name">
	        <h1>
	          <a href="../">
	            <img src="img/logo_nav.png" class="nav-brand" alt="logo"> <b>spacecard</b></a>
	        </h1>
	      </li>
	    </ul>
	    <section class="top-bar-section">
	      <ul class="right">
	        <li class="not-click">
	          <a href="" data-reveal-id="myModal">upload</a>
	        </li>
	        <li class="not-click">
	          <a href="explore/">explore</a>
	        </li>
	        <li class="not-click">
	          <a href="profile/">sign in</a>
	        </li>
	      </ul>
	    </section>
	  </nav> -->

		<section id="about" name="about"></section>
		<!-- INTRO WRAP -->
		<div id="intro">
			<div class="container">
				<div class="row centered">
					<h1>Welcome to Space Card!</h1>
					<br>
					<br>
					<h3>This is the platform to create amazing postcards for memorable events! Celebrate graduations, weddings, births ... with your loved ones by personalizing outer space images and share them with the rest of the world. Let's get started</h3>
					<br>
					<br>
					<form action="login.go" method="POST">
			      <br>
			      <input type="submit" class="btn btn-success" value="Access your account" id="btn" name="select">
			    </form>

				</div>
				<br>
				<hr>
		    </div> <!--/ .container -->
		</div><!--/ #introwrap -->

		<!-- FEATURES WRAP -->
		<div id="features">
			<div class="container">
				<div class="row">
					<h1 class="centered">What's New?</h1>
					<br>
					<br>
					<div class="col-lg-6 centered">
						<img class="centered" src="assets/img/mobile.png" alt="">
					</div>

					<div class="col-lg-6">
						<h3>Some Features</h3>
						<br>
					<!-- ACCORDION -->
									<div class="accordion ac" id="accordion2">
											<div class="accordion-group">
													<div class="accordion-heading">
															<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
															Feature 1
															</a>
													</div><!-- /accordion-heading -->
													<div id="collapseOne" class="accordion-body collapse in">
															<div class="accordion-inner">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet facilis sapiente sit nobis magni mollitia natus dicta necessitatibus, in ab tenetur consequuntur ipsa, vitae provident accusantium delectus aspernatur totam optio?</p>
									</div><!-- /accordion-inner -->
													</div><!-- /collapse -->
											</div><!-- /accordion-group -->
											<br>

											<div class="accordion-group">
													<div class="accordion-heading">
															<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
															Feature 2
															</a>
													</div>
													<div id="collapseTwo" class="accordion-body collapse">
															<div class="accordion-inner">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit eum, saepe, excepturi delectus at dolorem placeat quae necessitatibus, incidunt explicabo, unde beatae voluptate vitae possimus voluptates. Error, expedita necessitatibus delectus.</p>
									</div><!-- /accordion-inner -->
													</div><!-- /collapse -->
											</div><!-- /accordion-group -->
											<br>

											<div class="accordion-group">
													<div class="accordion-heading">
															<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
															Feature 3
															</a>
													</div>
													<div id="collapseThree" class="accordion-body collapse">
															<div class="accordion-inner">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque eos quibusdam aspernatur, quasi, iste eveniet similique et a ab, atque nihil ipsam suscipit maxime dolorem corporis autem obcaecati maiores. Sit.</p>
									</div><!-- /accordion-inner -->
													</div><!-- /collapse -->
											</div><!-- /accordion-group -->
											<br>

											<div class="accordion-group">
													<div class="accordion-heading">
															<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseFour">
															Responsive Design
															</a>
													</div>
													<div id="collapseFour" class="accordion-body collapse">
															<div class="accordion-inner">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure dolore iusto ut aliquid quia voluptate perferendis excepturi, numquam. Maiores labore earum, nostrum blanditiis totam illum officiis aperiam exercitationem, ea architecto?</p>
									</div><!-- /accordion-inner -->
													</div><!-- /collapse -->
											</div><!-- /accordion-group -->
											<br>
						</div><!-- Accordion -->
					</div>
				</div>
			</div><!--/ .container -->
		</div><!--/ #features -->

		<section id="showcase" name="showcase"></section>
		<div id="showcase">
			<div class="container">
				<div class="row">
					<h1 class="centered">Some Screenshots</h1>
					<br>
					<div class="col-lg-8 col-lg-offset-2">
						<div id="carousel-example-generic" class="carousel slide">
						  <!-- Indicators -->
						  <ol class="carousel-indicators">
						    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
						    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
						    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
						    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
						  </ol>

						  <!-- Wrapper for slides -->
						  <div class="carousel-inner">
						    <div class="item active">
						      <img src="assets/img/space1.jpg" alt="">
						    </div>
						    <div class="item">
						      <img src="assets/img/space2.jpg" alt="">
						    </div>
						    <div class="item">
						      <img src="assets/img/space3.jpg" alt="">
						    </div>
						    <div class="item">
						      <img src="assets/img/space4.jpg" alt="">
						    </div>
						    <div class="item">
						      <img src="assets/img/space5.jpg" alt="">
						    </div>
						  </div>
						</div>
					</div>
				</div>
				<br>
				<br>
				<br>
			</div><!-- /container -->
		</div>
		<jsp:include page="partials/scripts.jsp" />
		<script>
			$('.carousel').carousel({
			  interval: 3500
			})
		</script>
	</body>
</html>
