<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% if (session.getAttribute("admin")==null) response.sendRedirect("../login.jsp");%>
    <!--
        ===
        This comment should NOT be removed.

        Charisma v2.0.0

        Copyright 2012-2014 Muhammad Usman
        Licensed under the Apache License v2.0
        http://www.apache.org/licenses/LICENSE-2.0

        https://shop243665397.taobao.com/
        http://twitter.com/halalit_usman
        ===
    -->

    <link id="bs-css" href="../css/bootstrap-cerulean.min.css" rel="stylesheet">

    <link href="../css/charisma-app.css" rel="stylesheet">
    <link href='../bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='../bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='../bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='../bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='../bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='../bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='../css/jquery.noty.css' rel='stylesheet'>
    <link href='../css/noty_theme_default.css' rel='stylesheet'>
    <link href='../css/elfinder.min.css' rel='stylesheet'>
    <link href='../css/elfinder.theme.css' rel='stylesheet'>
    <link href='../css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='../css/uploadify.css' rel='stylesheet'>
    <link href='../css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="../bower_components/jquery/jquery.min.js"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="../img/favicon.ico">

</head>

<body>
    <!-- topbar starts -->
    <div class="navbar navbar-default" role="navigation">

        <div class="navbar-inner">
            <button type="button" class="navbar-toggle pull-left animated flip">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../index.jsp"> <img alt="Charisma Logo" src="../img/logo20.png" class="hidden-xs"/>
                <span>??????????????????</span></a>

            <!-- user dropdown starts -->
            <div class="btn-group pull-right">
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"> ${admin.name}</span>
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="../user?action=logout">????????????</a></li>
                </ul>
            </div>
            <!-- user dropdown ends -->
        </div>
    </div>
    <!-- topbar ends -->
<div class="ch-container">
    <div class="row">
        
        <!-- left menu starts -->
        <div class="col-sm-2 col-lg-2">
            <div class="sidebar-nav">
                <div class="nav-canvas">
                    <div class="nav-sm nav nav-stacked">

                    </div>
                    <ul class="nav nav-pills nav-stacked main-menu">
                        <li class="nav-header">??????</li>
							<li><a class="ajax-link" href="../index.jsp"><i class="glyphicon glyphicon-home"></i><span> &ensp;???&ensp;???</span></a>
							<li class="active"><a class="ajax-link" href="../admin?action=adminList"><i class="glyphicon glyphicon-cog"></i><span> &ensp;???&ensp;???&ensp;???&ensp;???&ensp;???</span></a>
							<li><a class="ajax-link" href="../main?action=maintainList"><i class="glyphicon glyphicon-wrench"></i><span> &ensp;???&ensp;???&ensp;???&ensp;???</span></a>
							<li><a class="ajax-link" href="../notice?action=noticelist"><i class="glyphicon glyphicon-envelope"></i><span> &ensp;???&ensp;???&ensp;???&ensp;???</span></a>
							<li><a class="ajax-link" href="../inspection?action=inspectionList"><i class="glyphicon glyphicon-info-sign"></i><span> &ensp;???&ensp;???&ensp;???&ensp;???</span></a>
							<li><a class="ajax-link" href="../custom?action=customAccountList"><i class="glyphicon glyphicon-user"></i><span> &ensp;???&ensp;???&ensp;???&ensp;???</span></a>
							<li><a class="ajax-link" href="../house?action=houseList"><i class="glyphicon glyphicon-list-alt"></i><span> &ensp;???&ensp;???&ensp;???&ensp;???</span></a>
                        </li>
                                              
                    </ul>
                    
                </div>
            </div>
        </div>
        <!--/span-->
        <!-- left menu ends -->

        <noscript>
            <div class="alert alert-block col-md-12">
                <h4 class="alert-heading">Warning!</h4>

                <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
                    enabled to use this site.</p>
            </div>
        </noscript>

        <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->
            <div>
    <ul class="breadcrumb">
        <li>
            <a href="../index.jsp">??????</a>
        </li>
        <li>
            <a href="../admin?action=adminList">???????????????</a>
        </li>
        <li>
            <a href="#">??????</a>
        </li>
    </ul>
</div>

<div class="row">
	<div class="box col-md-12">
		<div class="box-inner">
			<div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-edit"></i> ??????</h2>

                <div class="box-icon">
                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                            class="glyphicon glyphicon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round btn-default"><i
                            class="glyphicon glyphicon-remove"></i></a>
                </div>
            </div>
			<div class="box-content">
                <form action="../admin?action=adminAdd" method="post" data-toggle="validator">
                    <div class="form-group">
						<div class="input-group col-md-3">
							<label class="control-label" for="name">??????*</label>
							<input type="text" class="form-control" name="name" / required>
							<span class="help-block with-errors"></span>
						</div>
                    </div>
                    <div class="form-group">
						<div class="input-group col-md-3">
							<label for="password">??????*</label>
							<input type="password" class="form-control" name="password" pattern="^[a-z0-9_]{6,18}$" data-error="??????????????????" id="Password1" required/>
							<span class="help-block with-errors">??????????????? ???????????????????????????6?????????</span>
						</div> 
						<div class="input-group col-md-3">
							<label for="Password2">????????????*</label>
							<input type="password" class="form-control" id="Password2"  data-match="#Password1" data-error="???????????????" required>
							<span class="help-block with-errors"></span>
						</div> 
					</div>
					<label class="control-label">??????*</label>
                    <div class="radio">
						<label class="label-inline">
							<input type="radio" name="sex" value="???" checked>
							???&ensp;&ensp;
						</label>
						<label class="label-inline">
							<input type="radio" name="sex" value="???">
							???
						</label>
					</div>
					<div class="form-group">
						<div class="input-group col-md-1">
							<label class="control-label" for="age">??????*</label>
							<input type="number" class="form-control" name="age" required/>
							<span class="help-block with-errors"></span>
						</div>
					</div>
					<div class="form-group">
						<div class="input-group col-md-3">
							<label class="control-label" for="tel">??????</label>
							<input type="text" class="form-control" name="tel" />
						</div>
					</div>
					<div class="form-group">
						<div class="input-group col-md-3">
							<label class="control-label" for="phone">??????</label>
							<input type="text" class="form-control" name="phone" />
						</div>
					</div>
					<div class="form-group">
						<div class="input-group col-md-4">
							<label class="control-label" for="addr">??????*</label>
							<input type="text" class="form-control" name="addr" required/>
							<span class="help-block with-errors"></span>
						</div>
					</div>
					<div class="form-group">
						<div class="input-group col-md-4">
							<label class="control-label" for="memo">??????</label>
							<input type="text" class="form-control" name="memo" />
						</div>
					</div>
                    <input type="submit" class="btn btn-info" value="??????"></button>
                </form>

            </div>
		</div>
	</div>
</div>



    <!-- content ends -->
    </div><!--/#content.col-md-0-->
</div><!--/fluid-row-->



    <hr>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">

        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">??</button>
                    <h3>????????????</h3>
                </div>
                <div class="modal-body">
                    <p>?????????????????????</p>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn btn-default" data-dismiss="modal">??????</a>
                    <a href="#" class="btn btn-primary" data-dismiss="modal">??????</a>
                </div>
            </div>
        </div>
    </div>

    <footer class="row">
        <p class="col-md-9 col-sm-9 col-xs-12 copyright"><a href="https://shop243665397.taobao.com/" target="_blank">&copy; 
                </a> </p>

        <p class="col-md-3 col-sm-3 col-xs-12 powered-by">Powered by: <a
                href="https://shop243665397.taobao.com/"></a></p>
    </footer>

</div><!--/.fluid-container-->

<!-- external javascript -->
<script src="../js/validator.min.js"></script>
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="../js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='../bower_components/moment/min/moment.min.js'></script>
<script src='../bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='../js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="../bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="../bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="../js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="../bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="../bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="../js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="../js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="../js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="../js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="../js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="../js/charisma.js"></script>


</body>
</html>

</html>
