<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en"><head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
                <title>Activity Stream</title>
            <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/custom.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/bootstrap-select-1.9.4/css/bootstrap-select.min.css">
    
    </head>
    <body>

<div id="wrapper"><div id="content">
    <nav class="navbar navbar-static-top tickets-wiki" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#">Activity</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-menu-hamburger"></span></a>
                        <ul class="dropdown-menu">
                            <li class="active"><a href="/activity_home" title="Go to activity"><i class="fa fa-ticket"></i>Activity</a></li>
                            <li class="divider" role="separator"></li>
                            <li><a href="/home"><i class="fa fa-home"></i> Home</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Projects <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">Current project</li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Recent projects</li>
                                                    </ul>
                    </li>
                    <li class="active"><a href="activity.html">Activity</a></li>
                                            <li><a href="/activity_issue">New Issue</a></li>
                                        <li><a href="/activity_dashboard">Dashboard</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown mine-dropdown"> 
                        <a class="dropdown-toggle" aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown" href="#">
                            <img src="/assets/imgs/default/male.jpg" alt="profile" class="profile-img">
                            Demonstration Account                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="/profile.html"><i class="fa fa-user"></i> Profile</a></li>
                            <li>
                                <a href="javascript:void(0);" id="notifPopover" data-toggle="popover" data-original-title="" title="">
                                    <i class="fa fa-flag-o"></i> Notifications                                    <span class="badge">0</span>
                                </a>
                            </li>
                            <li class="divider" role="separator"></li>
                            <li><a href="/"><i class="fa fa-sign-out"></i> Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3">
                            
            </div>
        </div>
        <h1>Activity</h1>
<div class="row" id="home-tickets">
    <div class="col-sm-6">
        <div class="panel panel-info">
            <div class="panel-heading">Introduction</div>
            <div class="panel-body">
                <h1>Welcome </h1>
                </div>
        </div>

    </div>
    <div class="col-sm-6">
        <div class="panel panel-info">
            <div class="panel-heading">Assigned to me</div>
            <div class="panel-body">
                                    No Activity                            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">Activity Stream</div>
            <div class="panel-body">
                                    No Activity  </div>
           
        </div>

                                    </div>
        </div>
    </div>
</div>
    </div>
</div>    <footer class="blue-gradient">
      </footer>
    </div>