<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


	<xsl:template match="/">

		<html>

			<head>
				<title>
					<xsl:value-of select="/table/rows/row[38]/value[1]"/> - <xsl:value-of
						select="/table/rows/row[38]/value[9]"/>
				</title>
				<meta name="author" content="Daniel Christensen"/>
				<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
				<!--Morphological Coding Scheme-->
				<meta name="MorphCodes" src="../resources/BibleWorks10-GreekMorphCodes.pdf"
					href="https://www.bibleworks.com/bw9help/bwh43a_Codes_BLM.htm"/>
				<!--Local Stylesheet-->
				<link rel="stylesheet" type="text/css" href="../css/mystyle.css"/>
				<!--Preset Gospel Colors-->
				<link id="pagestyle" rel="stylesheet" type="text/css" href=""/>
				<!--External Stylesheets-->
				<link rel="stylesheet"
					href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
					integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
					crossorigin="anonymous"/>
				<link rel="stylesheet"
					href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
					integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
					crossorigin="anonymous"/>
			</head>

			<body>

				<!--Navbar-->
				<div class="container">
					<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
						<a class="navbar-brand" href="index.html">
							<img src="../images/book-of-kells-gospels.jpg" class="align-top"
								style="width: 30px; width: 30px;"/>
						</a>
						<button class="navbar-toggler" type="button" data-toggle="collapse"
							data-target="#navbarNav">
							<span class="navbar-toggler-icon"/>
						</button>
						<div class="collapse navbar-collapse" id="navbarNav">
							<ul class="navbar-nav">
								<li class="nav-item active">
									<a class="nav-link" href="../index.html">Home</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="../synopses.html">Synopses</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="../about.html">About</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="../contact.html">Contact</a>
								</li>
							</ul>
							<!--Search Bar
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>-->
						</div>
					</nav>
				</div>

				<!--Title Banner-->
				<div class="jumbotron jumbotron-fluid text-center">
					<div class="container-fluid title-bkg">
						<p id="testTitle" class="title">
							<xsl:value-of select="/table/rows/row[38]/value[9]"/>
						</p>
						<p class="subtitle d-none d-md-block">Synopsis #<xsl:value-of
								select="/table/rows/row[38]/value[1]"/>
						</p>
					</div>
				</div>
				<div class="container-fluid top-border"/>



				<!--Title Image and Navigation-->
				<div class="container-fluid">
					<div class="row">
						<div class="col div-center">
							<a href="{table/rows/row[38]/value[33]}.html" class="btn btn-lg btn-outline-dark narrow" type="button">
								<span class="d-none d-md-block">Previous</span>
								<i class="fas fa-arrow-circle-left"/>
							</a>
						</div>
						<div class="col">
							<div class="container-fluid d-none d-md-block">
								<a href="{table/rows/row[38]/value[30]}" target="_blank">
									<img class="img-fluid rounded mx-auto d-md-block"
										style="max-height: 500px" alt="Responsive image"
										src="../images/{table/rows/row[38]/value[31]}"/>
								</a>
								<p class="text-center">
									<xsl:value-of select="/table/rows/row[38]/value[29]"/>
								</p>
							</div>
						</div>
						<div class="col div-center">
							<a href="{table/rows/row[38]/value[32]}.html" class="btn btn-lg btn-outline-dark narrow" type="button">
								<span class="d-none d-md-block">Next</span>
								<i class="fas fa-arrow-circle-right"/>
							</a>
						</div>
					</div>
				</div>

				<!--Change Style Buttons-->
				<div class="container-fluid" style="background-color: #ab3226">
					<div class="row">
						<div class="col">
							<div class="container-fluid">
								<nav class="navbar navbar-expand-lg stikcy-top"
									style="background-color: #ab3226; color: white">
									<button class="navbar-toggler" type="button"
										data-toggle="collapse" data-target="#paletteNav">
										<i class="fas fa-bars" style="color: white"/>
									</button>
									<div class="collapse navbar-collapse" id="paletteNav">
										<ul class="navbar-nav">
											<li class="nav-item d-none d-md-block">
												<a class="nav-link btn">Color Palettes</a>
											</li>
											<li class="nav-item">
												<a class="nav-link btn"
												onClick="changestyle('../css/plaintext.css')">
												<i class="fas fa-font"/> Plain Text</a>
											</li>
											<li class="nav-item dropdown">
												<a class="nav-link dropdown-toggle"
												id="palettesDropdown" role="button"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="fas fa-palette"/> Styles</a>
												<div class="dropdown-menu">
												<a class="dropdown-item btn"
												onClick="changestyle('../css/synopsiscolors.css')"
												><i class="fas fa-brush"/> Primary</a>
												<a class="dropdown-item btn"
												onClick="changestyle('../css/farmerColors.css')"
												><i class="fas fa-brush"/> Farmer</a>
												</div>
											</li>
										</ul>
									</div>
								</nav>
							</div>
							<!--Choose Colors-->
						</div>
						<div class="col">
							<div class="container">
								<nav class="navbar navbar-expand-lg"
									style="background-color: #ab3226; color: white">
									<button class="navbar-toggler" type="button"
										data-toggle="collapse" data-target="#colorsNav">
										<i class="fas fa-bars" style="color: white"/>
									</button>
									<div class="collapse navbar-collapse" id="colorsNav">
										<ul class="navbar-nav" style="color: white">
											<li class="nav-item d-none d-md-block">
												<a class="nav-link btn">Choose Colors</a>
											</li>
											<li class="nav-item dropdown">
												<a class="nav-link dropdown-toggle" role="button"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="M fas fa-square"/> Matt</a>
												<div class="dropdown-menu">
												<a name="red" class="dropdown-item btn Mcolorsel"
												><i class="fas fa-square" style="color:red"/>
												Red</a>
												<a name="orange"
												class="dropdown-item btn Mcolorsel"><i
												class="fas fa-square" style="color:orange"/>
												Orange</a>
												<a name="yellow"
												class="dropdown-item btn Mcolorsel"><i
												class="fas fa-square" style="color:yellow"/>
												Yellow</a>
												<a name="green"
												class="dropdown-item btn Mcolorsel"><i
												class="fas fa-square" style="color:green"/>
												Green</a>
												<a name="blue" class="dropdown-item btn Mcolorsel"
												><i class="fas fa-square" style="color:blue"/>
												Blue</a>
												<a name="purple"
												class="dropdown-item btn Mcolorsel"><i
												class="fas fa-square" style="color:purple"/>
												Purple</a>
												<a name="black"
												class="dropdown-item btn Mcolorsel"><i
												class="fas fa-square" style="color:black"/>
												Black</a>
												<a name="brown"
												class="dropdown-item btn Mcolorsel"><i
												class="fas fa-square" style="color:brown"/>
												Brown</a>
												<a name="none"
												class="dropdown-item btn Mcolorsel-none"><i
												class="far fa-square"/> None</a>
												</div>
											</li>
											<li class="nav-item dropdown">
												<a class="nav-link dropdown-toggle" role="button"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="R fas fa-square"/> Mark</a>
												<div class="dropdown-menu">
												<a name="red" class="dropdown-item btn Rcolorsel"
												><i class="fas fa-square" style="color:red"/>
												Red</a>
												<a name="orange"
												class="dropdown-item btn Rcolorsel"><i
												class="fas fa-square" style="color:orange"/>
												Orange</a>
												<a name="yellow"
												class="dropdown-item btn Rcolorsel"><i
												class="fas fa-square" style="color:yellow"/>
												Yellow</a>
												<a name="green"
												class="dropdown-item btn Rcolorsel"><i
												class="fas fa-square" style="color:green"/>
												Green</a>
												<a name="blue" class="dropdown-item btn Rcolorsel"
												><i class="fas fa-square" style="color:blue"/>
												Blue</a>
												<a name="purple"
												class="dropdown-item btn Rcolorsel"><i
												class="fas fa-square" style="color:purple"/>
												Purple</a>
												<a name="black"
												class="dropdown-item btn Rcolorsel"><i
												class="fas fa-square" style="color:black"/>
												Black</a>
												<a name="brown"
												class="dropdown-item btn Rcolorsel"><i
												class="fas fa-square" style="color:brown"/>
												Brown</a>
												<a name="none"
												class="dropdown-item btn Rcolorsel-none"><i
												class="far fa-square"/> None</a>
												</div>
											</li>
											<li class="nav-item dropdown">
												<a class="nav-link dropdown-toggle" role="button"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="L fas fa-square"/> Luke</a>
												<div class="dropdown-menu">
												<a name="red" class="dropdown-item btn Lcolorsel"
												><i class="fas fa-square" style="color:red"/>
												Red</a>
												<a name="orange"
												class="dropdown-item btn Lcolorsel"><i
												class="fas fa-square" style="color:orange"/>
												Orange</a>
												<a name="yellow"
												class="dropdown-item btn Lcolorsel"><i
												class="fas fa-square" style="color:yellow"/>
												Yellow</a>
												<a name="green"
												class="dropdown-item btn Lcolorsel"><i
												class="fas fa-square" style="color:green"/>
												Green</a>
												<a name="blue" class="dropdown-item btn Lcolorsel"
												><i class="fas fa-square" style="color:blue"/>
												Blue</a>
												<a name="purple"
												class="dropdown-item btn Lcolorsel"><i
												class="fas fa-square" style="color:purple"/>
												Purple</a>
												<a name="black"
												class="dropdown-item btn Lcolorsel"><i
												class="fas fa-square" style="color:black"/>
												Black</a>
												<a name="brown"
												class="dropdown-item btn Lcolorsel"><i
												class="fas fa-square" style="color:brown"/>
												Brown</a>
												<a name="none"
												class="dropdown-item btn Lcolorsel-none"><i
												class="far fa-square"/> None</a>
												</div>
											</li>
											<li class="nav-item dropdown">
												<a class="nav-link dropdown-toggle" role="button"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="A fas fa-square"/> Mt/Mk</a>
												<div class="dropdown-menu">
												<a name="red" class="dropdown-item btn Acolorsel"
												><i class="fas fa-square" style="color:red"/>
												Red</a>
												<a name="orange"
												class="dropdown-item btn Acolorsel"><i
												class="fas fa-square" style="color:orange"/>
												Orange</a>
												<a name="yellow"
												class="dropdown-item btn Acolorsel"><i
												class="fas fa-square" style="color:yellow"/>
												Yellow</a>
												<a name="green"
												class="dropdown-item btn Acolorsel"><i
												class="fas fa-square" style="color:green"/>
												Green</a>
												<a name="blue" class="dropdown-item btn Acolorsel"
												><i class="fas fa-square" style="color:blue"/>
												Blue</a>
												<a name="purple"
												class="dropdown-item btn Acolorsel"><i
												class="fas fa-square" style="color:purple"/>
												Purple</a>
												<a name="black"
												class="dropdown-item btn Acolorsel"><i
												class="fas fa-square" style="color:black"/>
												Black</a>
												<a name="brown"
												class="dropdown-item btn Acolorsel"><i
												class="fas fa-square" style="color:brown"/>
												Brown</a>
												<a name="none"
												class="dropdown-item btn Acolorsel-none"><i
												class="far fa-square"/> None</a>
												</div>
											</li>
											<li class="nav-item dropdown">
												<a class="nav-link dropdown-toggle" role="button"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="B fas fa-square"/> Mk/Lk</a>
												<div class="dropdown-menu">
												<a name="red" class="dropdown-item btn Bcolorsel"
												><i class="fas fa-square" style="color:red"/>
												Red</a>
												<a name="orange"
												class="dropdown-item btn Bcolorsel"><i
												class="fas fa-square" style="color:orange"/>
												Orange</a>
												<a name="yellow"
												class="dropdown-item btn Bcolorsel"><i
												class="fas fa-square" style="color:yellow"/>
												Yellow</a>
												<a name="green"
												class="dropdown-item btn Bcolorsel"><i
												class="fas fa-square" style="color:green"/>
												Green</a>
												<a name="blue" class="dropdown-item btn Bcolorsel"
												><i class="fas fa-square" style="color:blue"/>
												Blue</a>
												<a name="purple"
												class="dropdown-item btn Bcolorsel"><i
												class="fas fa-square" style="color:purple"/>
												Purple</a>
												<a name="black"
												class="dropdown-item btn Bcolorsel"><i
												class="fas fa-square" style="color:black"/>
												Black</a>
												<a name="brown"
												class="dropdown-item btn Bcolorsel"><i
												class="fas fa-square" style="color:brown"/>
												Brown</a>
												<a name="none"
												class="dropdown-item btn Bcolorsel-none"><i
												class="far fa-square"/> None</a>
												</div>
											</li>
											<li class="nav-item dropdown">
												<a class="nav-link dropdown-toggle" role="button"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="C fas fa-square"/> Mt/Lk</a>
												<div class="dropdown-menu">
												<a name="red" class="dropdown-item btn Ccolorsel"
												><i class="fas fa-square" style="color:red"/>
												Red</a>
												<a name="orange"
												class="dropdown-item btn Ccolorsel"><i
												class="fas fa-square" style="color:orange"/>
												Orange</a>
												<a name="yellow"
												class="dropdown-item btn Ccolorsel"><i
												class="fas fa-square" style="color:yellow"/>
												Yellow</a>
												<a name="green"
												class="dropdown-item btn Ccolorsel"><i
												class="fas fa-square" style="color:green"/>
												Green</a>
												<a name="blue" class="dropdown-item btn Ccolorsel"
												><i class="fas fa-square" style="color:blue"/>
												Blue</a>
												<a name="purple"
												class="dropdown-item btn Ccolorsel"><i
												class="fas fa-square" style="color:purple"/>
												Purple</a>
												<a name="black"
												class="dropdown-item btn Ccolorsel"><i
												class="fas fa-square" style="color:black"/>
												Black</a>
												<a name="brown"
												class="dropdown-item btn Ccolorsel"><i
												class="fas fa-square" style="color:brown"/>
												Brown</a>
												<a name="none"
												class="dropdown-item btn Ccolorsel-none"><i
												class="far fa-square"/> None</a>
												</div>
											</li>
											<li class="nav-item dropdown">
												<a class="nav-link dropdown-toggle" role="button"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="T fas fa-square"/> Trip</a>
												<div class="dropdown-menu">
												<a name="red" class="dropdown-item btn Tcolorsel"
												><i class="fas fa-square" style="color:red"/>
												Red</a>
												<a name="orange"
												class="dropdown-item btn Tcolorsel"><i
												class="fas fa-square" style="color:orange"/>
												Orange</a>
												<a name="yellow"
												class="dropdown-item btn Tcolorsel"><i
												class="fas fa-square" style="color:yellow"/>
												Yellow</a>
												<a name="green"
												class="dropdown-item btn Tcolorsel"><i
												class="fas fa-square" style="color:green"/>
												Green</a>
												<a name="blue" class="dropdown-item btn Tcolorsel"
												><i class="fas fa-square" style="color:blue"/>
												Blue</a>
												<a name="purple"
												class="dropdown-item btn Tcolorsel"><i
												class="fas fa-square" style="color:purple"/>
												Purple</a>
												<a name="black"
												class="dropdown-item btn Tcolorsel"><i
												class="fas fa-square" style="color:black"/>
												Black</a>
												<a name="brown"
												class="dropdown-item btn Tcolorsel"><i
												class="fas fa-square" style="color:brown"/>
												Brown</a>
												<a name="none"
												class="dropdown-item btn Tcolorsel-none"><i
												class="far fa-square"/> None</a>
												</div>
											</li>
										</ul>
									</div>
								</nav>
							</div>
						</div>
					</div>
				</div>

				<!--Parsing Display
<div class="container-fluid subNav">
	<div class="top row px-3">
		<div class="m-md-4 col-md">
			<p>Parse: <span class="parse"></span></p>
		</div>
		<div class="m-md-4 col-md">
		</div>
		<div class="m-md-4 col-md">
		</div>
	</div>
</div>-->


				<!--Title = Lemma and POS-->
				<div class="container-fluid">
					<div class="top row px-3">
						<div name="Matt" class="contrastbkg m-md-4 col-md">
							<div class="container-fluid text-center"><h3>Matthew <xsl:value-of
										select="/table/rows/row[38]/value[2]"/>
								</h3></div>
							<xsl:apply-templates select="table/rows/row[38]/Matt/results/rows"/>
							<br/><br/>&#xA0; <p class="container-fluid text-right bottom pr-5"
									><b>Word Count: <xsl:value-of
										select="/table/rows/row[38]/value[10]"/></b></p>
						</div>
						<div name="Mark" class="contrastbkg m-md-4 col-md text-column">
							<div class="container-fluid text-center"><h3>Mark <xsl:value-of
										select="/table/rows/row[38]/value[3]"/>
								</h3></div>
							<xsl:apply-templates select="table/rows/row[38]/Mark/results/rows"/>
							<br/><br/>&#xA0; <p class="container-fluid text-right bottom pr-5"
									><b>Word Count: <xsl:value-of
										select="/table/rows/row[38]/value[11]"/></b></p>
						</div>
						<div name="Luke" class="contrastbkg m-md-4 col-md">
							<div class="container-fluid text-center"><h3>Luke <xsl:value-of
										select="/table/rows/row[38]/value[4]"/>
								</h3></div>
							<xsl:apply-templates select="table/rows/row[38]/Luke/results/rows"/>
							<br/><br/>&#xA0; <p class="container-fluid text-right bottom pr-5"
									><b>Word Count: <xsl:value-of
										select="/table/rows/row[38]/value[12]"/></b></p>
						</div>
					</div>
				</div>

				<!--John-->
				<div class="container">
					<div class="row">
						<div name="John" class="contrastbkg m-md-4 col-md">
							<div class="container-fluid text-center"><h3>John <xsl:value-of
										select="/table/rows/row[38]/value[5]"/>
								</h3></div>
							<xsl:apply-templates select="table/rows/row[38]/John/results/rows"/>
							<br/><br/>&#xA0; <p class="container-fluid text-right bottom pr-5"
									><b>Word Count: <xsl:value-of
										select="/table/rows/row[38]/value[13]"/></b></p>
						</div>
					</div>
				</div>

				<!--Display Synopsis Legend-->
				<div class="container-fluid px-5">
					<div class="row">
						<div class="col-5 div-center pb-3">
							<a href="../synopses.html" class="btn btn-lg btn-outline-dark narrow"
								type="button"> Return<span class="d-none d-md-block">to Synopsis
									Menu</span></a>
							<a href="../synopses-howto.html"
								class="btn btn-lg btn-outline-dark narrow" type="button"
								target="_blank">
								<i class="fas fa-book"/> User Guide</a>
							<a src="../../resources/BibleWorks10-GreekMorphCodes.pdf"
								href="https://www.bibleworks.com/bw9help/bwh43a_Codes_BLM.htm"
								class="btn btn-lg btn-outline-dark narrow" type="button"
								target="_blank"><i class="fas fa-list-ul"/> Parsing Chart</a>
						</div>
						<div class="col float-right d-none d-md-block">
							<table class="table table-hover table-striped">
								<thead>
									<tr>
										<th scope="col"/>
										<th scope="col">Word Count (Text)</th>
										<th scope="cole">Word Count (Lemma)</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">Unique Matthew</th>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[14]"/>
										</td>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[15]"/>
										</td>
									</tr>
									<tr>
										<th scope="row">Unique Mark</th>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[16]"/>
										</td>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[17]"/>
										</td>
									</tr>
									<tr>
										<th scope="row">Unique Luke</th>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[18]"/>
										</td>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[19]"/>
										</td>
									</tr>
									<tr>
										<th scope="row">Matthew and Mark</th>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[20]"/>
										</td>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[21]"/>
										</td>
									</tr>
									<tr>
										<th scope="row">Mark and Luke</th>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[22]"/>
										</td>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[23]"/>
										</td>
									</tr>
									<tr>
										<th scope="row">Matthew and Luke</th>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[24]"/>
										</td>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[25]"/>
										</td>
									</tr>
									<tr>
										<th scope="row">Triple</th>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[26]"/>
										</td>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[27]"/>
										</td>
									</tr>
									<tr>
										<th scope="row"/>
										<td>
											<b>Total Words</b>
										</td>
										<td>
											<xsl:value-of select="/table/rows/row[38]/value[28]"/>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>


				<!-- Footer -->
				<footer class="page-footer sticky-bottom font-small teal py-2 bg-dark text-white">
					<div class="container-fluid text-center text-md-left d-md-none">Daniel K. Christensen | Copyright 2019</div>
					<div class="container-fluid text-center text-md-left d-none d-md-block">
						<div class="row">
							<div class="col-md-2.5 pl-5">
								<a href="https://goo.gl/images/BkMKMf" target="_blank">
									<img src="../images/book-of-kells-gospels.jpg"
										style="width: 100px; width: 100px;"/>
								</a>
							</div>
							<div class="col-md">
								<p>Gospel Data</p>
								<p>Copyright 2019</p>
								<p>
									<a class="anchor" href="mailto:dkchristensen@uchicago.edu"
										>Daniel K. Christensen</a>
								</p>
							</div>
							<div class="col-md">
								<p>
									<a class="anchor" href="../index.html">Home</a>
								</p>
								<p>
									<a class="anchor" href="../synopses.html">Synopses</a>
								</p>

								<p>
									<a class="anchor" href="../about.html">About</a>
								</p>
								<p>
									<a class="anchor" href="../contact.html">Contact</a>
								</p>
							</div>
						</div>
					</div>
				</footer>

				<!--External Scripts-->
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"/>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"/>
				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"/>
				<!--Local Scripts
<script src="scripts/jquery.min.js"></script>
<script src="scripts/popper.min.js"></script>
<script src="scripts/bootstrap.min.js"></script>-->
				<script src="../scripts/changestyle.js"/>
				<script src="../scripts/wordPink.js"/>
				<script src="../scripts/chooseOwnColors.js"/>
				<script src="../scripts/parse.js"/>
				<!--<script src="../scripts/pericopeNumber.js"></script-->

			</body>

		</html>

	</xsl:template>

	<!--XSL StyleSheet Templates-->

	<!--Load Words for Matthew-->
	<xsl:template match="table/rows/row[38]/Matt/results/rows">
		<xsl:for-each select="row">
			<sup>
				<xsl:value-of select="value[20]"/>
			</sup>
			<xsl:text> </xsl:text>
			<span id="{value[1]}" class="{value[10]} {value[11]}" bk="{value[5]}" ch="{value[6]}"
				vs="{value[7]}" src="{value[8]} {value[9]}" lemma="{value[3]}" pos="{value[4]}"
				title="{value[3]} - {value[4]}">
				<xsl:value-of select="value[2]"/>
			</span>
			<xsl:text>&#10;</xsl:text>
		</xsl:for-each>
	</xsl:template>

	<!--Load Words for Mark-->
	<xsl:template match="table/rows/row[38]/Mark/results/rows">
		<xsl:for-each select="row">
			<sup>
				<xsl:value-of select="value[20]"/>
			</sup>
			<xsl:text> </xsl:text>
			<span id="{value[1]}" class="{value[10]} {value[11]}" bk="{value[5]}" ch="{value[6]}"
				vs="{value[7]}" src="{value[8]} {value[9]}" lemma="{value[3]}" pos="{value[4]}"
				title="{value[3]} - {value[4]}">
				<xsl:value-of select="value[2]"/>
			</span>
			<xsl:text>&#10;</xsl:text>
		</xsl:for-each>
	</xsl:template>

	<!--Load Words for Luke-->
	<xsl:template match="table/rows/row[38]/Luke/results/rows">
		<xsl:for-each select="row">
			<sup>
				<xsl:value-of select="value[20]"/>
			</sup>
			<xsl:text> </xsl:text>
			<span id="{value[1]}" class="{value[10]} {value[11]}" bk="{value[5]}" ch="{value[6]}"
				vs="{value[7]}" src="{value[8]} {value[9]}" lemma="{value[3]}" pos="{value[4]}"
				title="{value[3]} - {value[4]}">
				<xsl:value-of select="value[2]"/>
			</span>
			<xsl:text>&#10;</xsl:text>
		</xsl:for-each>
	</xsl:template>

	<!--Load Words for John-->
	<xsl:template match="table/rows/row[38]/John/results/rows">
		<xsl:for-each select="row">
			<sup>
				<xsl:value-of select="value[21]"/>
			</sup>
			<xsl:text> </xsl:text>
			<span id="{value[1]}" class="{value[11]} {value[12]}" bk="{value[5]}" ch="{value[6]}"
				vs="{value[7]}" src="{value[8]} {value[9]} {value[10]}" lemma="{value[3]}"
				pos="{value[4]}" title="{value[3]} - {value[4]}">
				<xsl:value-of select="value[2]"/>
			</span>
			<xsl:text>&#10;</xsl:text>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>
