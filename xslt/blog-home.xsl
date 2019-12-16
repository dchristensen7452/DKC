<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:template match="/">
        
        <html>
            
            <head>
                <title>Blog Home</title>
                <meta name="author" content="Daniel Christensen"></meta>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
                        <!--Local Stylesheet-->
                        <link rel="stylesheet" type="text/css" href="../css/mystyle.css"></link>
                        <!--External Stylesheet-->
                        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"></link>
                            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous"></link>
            </head>
            
            <body>
                
                <!--Navbar-->
                <div class="container">
                    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
                        <a class="navbar-brand" href="index.html">
                            <img src="../images/IMG_2429%20-%20Copy.JPG" class="align-top" style="width: 30px; width: 30px;"></img>
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="../index.html">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="../research.html">Research</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="DKC-blog.xml">Blog</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        More
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                        <a class="dropdown-item" href="../links.html">Links</a>
                                        <a class="dropdown-item" href="../about.html">About</a>
                                    </div>
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
                <div class="hero-image" stlye="background-image: linear-gradient(rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.35)), url('../images/IMG_2453.jpg');">
                    <div class="hero-text">
                        <p><b>Politeuma</b></p>
                        <p style="font-size:4.5vw">Daniel's Blog</p>
                    </div>
                </div>
                
                <div class="buffer"></div>
                
                <!-- Page Body -->       
                
                <div class="container-fluid">
                    <div class="row">
                        <div class="d-none d-md-block col-md-1"></div>
                        <!-- Post Blurb -->
                        <div class="col">                           
                            <xsl:for-each select="blog/post">       
                                <div class="post">
                                    <xsl:element name="a">
                                        <xsl:attribute name="href">
                                            ../blogs/<xsl:value-of select="link"/>
                                        </xsl:attribute>
                                        <p class="post-title">
                                            <xsl:value-of select="title"/>
                                        </p>
                                    </xsl:element>
                                    <p class="post-meta">
                                        <span class="post-published">
                                            <xsl:value-of select="published"/>
                                        </span> | <span class="post-category">
                                            <xsl:value-of select="category"/>
                                        </span>
                                    </p>
                                    <p class="post-body-blurb">
                                        <xsl:copy-of select="blurb"/>
                                    </p>
                                </div>
                            </xsl:for-each>
                     
                        </div>
                        
                        
                        
                        <div class="d-none d-md-block col-md-2"></div>
                        
                        <!-- Latest Post 
                        <div class="col-3">
                            <p class="post-latest">Featured Posts</p>
                                <xsl:for-each select="blog/post">
                                    <a href="#">
                                        <p class="post-title-grab">
                                        <xsl:value-of select="title"/>
                                        </p>
                                    </a>
                                </xsl:for-each>
                        </div> -->
                        
                        <div class="d-none d-md-block col-md-1"></div>
                        
                    </div>
                </div>
                
                
<!-- Multiple Pages                
<div class="centered">  
    <p>
        <button type="button" class="btn btn-outline-secondary"><i class="fas fa-arrow-left"></i> Prev</button>
        <button type="button" class="btn btn-outline-secondary">Next <i class="fas fa-arrow-right"></i> </button>
    </p>  
</div>
-->
                
                
                
                
                
                <div class="bufferbottom"></div> 
                <!-- Footer -->
                <footer class="page-footer sticky-bottom font-small teal py-2 pb-3 bg-dark text-white">
                    <div class="container-fluid text-center text-md-left d-md-none">
                        <a class="anchor" href="mailto:dchristensen7452@gmail.com">Daniel K. Christensen</a> | Copyright 2019</div>
                    <div class="container-fluid text-center text-md-left d-none d-md-block">
                        <div class="row">
                            <div class="col-md-2.5 pl-5">
                                <a href="../images/IMG_2429%20-%20Copy.JPG" target="_blank">
                                    <img src="../images/IMG_2429%20-%20Copy.JPG" style="width: 100px; width: 100px;"></img>
                                </a>
                            </div>
                            <div class="col-md">
                                <p><a class="anchor" href="mailto:dchristensen7452@gmail.com">Daniel K. Christensen</a></p>
                                <p>Copyright 2019</p>
                            </div>
                            <div class="col-md">
                                <p><a class="anchor" href="../index.html">Home</a></p>
                                <p><a class="anchor" href="../research.html">Research</a></p>
                                <p><a class="anchor" href="../about.html">About</a></p>
                                <p><a class="anchor" href="DKC-blog.xml">Blog</a></p>
                            </div>
                        </div>
                    </div>
                </footer>
                
                <!--External Scripts-->
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
                <!--Local Scripts
<script src="scripts/jquery.min.js"></script>
<script src="scripts/popper.min.js"></script>
<script src="scripts/bootstrap.min.js"></script>-->
                
            </body>
            
        </html>
        
    </xsl:template>

</xsl:stylesheet>