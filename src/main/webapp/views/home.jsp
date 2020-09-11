<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="This is your home page">
<title>Select your project</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/custom.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Indie+Flower"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="assets/bootstrap-select-1.9.4/css/bootstrap-select.min.css">
</head>
<body>
		<div id="content">
			<div id="home" class="container-fluid">
				<h1>Welcome to Project Manager</h1>
				<div class="nav-top-content">
					<a href="/create"  title="Create new project"><i
						class="fa fa-plus-square"></i></a> 
					<a href="/profile"
						data-tooltip="tooltip" data-placement="bottom" title=""
						data-original-title="View profile"><i class="fa fa-user"></i></a>
					<a href="/" data-tooltip="tooltip"
						data-placement="bottom" title=""
						data-original-title="Open settings"><i class="fa fa-cog"></i></a>
					<a href="/" data-tooltip="tooltip"
						data-placement="bottom" title="" data-original-title="Logout"><i
						class="fa fa-sign-out"></i></a>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<div class="form-group project-selecter">
							<div
								class="btn-group bootstrap-select form-control show-tick show-menu-arrow">
								<button type="button" class="btn dropdown-toggle btn-default"
									data-toggle="dropdown" data-id="sel-proj" title="NewsApp">
									<span class="filter-option pull-left">NewsApp</span>&nbsp;<span
										class="bs-caret"><span class="caret"></span></span>
								</button>
								<div class="dropdown-menu open">
									<ul class="dropdown-menu inner" role="menu">
										<li data-original-index="0" class="selected"><a
											tabindex="0" class="" style="" data-tokens="null"><span
												class="text">NewsApp</span><span
												class="glyphicon glyphicon-ok check-mark"></span></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6 text-right bg-choice right">
					<a id="gototickets" href="/activity_dashboard"> Go to Dashboard <i
						class="fa fa-angle-left pull-left"></i>
					</a>
				</div>
				<div class="col-sm-6 text-left bg-choice left">
					<a id="gototickets" href="/activity_home"> Go to Activity <i
						class="fa fa-angle-right pull-right"></i>
					</a>
				</div>

			</div>
		</div>
	
	</body>
	</html>