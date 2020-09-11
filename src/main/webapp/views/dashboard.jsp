<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en"><head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Manage your tickets">
                <title>Activity Dashboard</title>
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/custom.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
          <link rel="stylesheet" href="assets/css/bootstrap-datepicker.min.css">
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
                            <li class="active"><a href="/activity_home" title="Go to Activity"><i class="fa fa-ticket"></i>Activity</a></li>
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
                    <li><a href="activity.html">Activity</a></li>
                                            <li><a href="/activity_issue">New Issue</a></li>
                                        <li class="active"><a href="/activity_dashboard">Dashboard</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown mine-dropdown"> 
                        <a class="dropdown-toggle" aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown" href="#">
                            <img src="assets/imgs/default/male.jpg" alt="profile" class="profile-img">
                            Demonstration Account                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="/view_profile"><i class="fa fa-user"></i> Profile</a></li>
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
      
<div id="toTop" class="btn btn-info"><span class="glyphicon glyphicon-chevron-up"></span> Back to top</div>
<div id="dashboard">
    <div id="loading"></div>
    <h1>Dashboard</h1>
    <hr>
    <div class="dash-options bordered text-center pull-left">
        Priorities        <ul class="priorities-list">
                            <li><span style="border-left:5px solid #e60000">High</span></li>
                            <li><span style="border-left:5px solid #009933">Normal</span></li>
                            <li><span style="border-left:5px solid #e0e0d1">Low</span></li>
                    </ul>
    </div>
    <form role="form" method="GET" id="filter-form" class="form-inline filter">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="form-group fast-filter">
                    <input type="hidden" name="order_by" value="ticket_priority.power">
                    <input type="hidden" name="order_type" value="ASC">
                    <label>Order by:</label>
                    <div class="dropdown inline">
                        <button type="button" class="btn btn-default dropdown-toggle ord-btn" data-toggle="dropdown">
                            <span class="innet-txt">Priority</span>
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu ord-type">
                            <li class="active"><a href="javascript:void(0)" data-order-by="ticket_priority.power">Priority</a></li>
                            <li class=""><a href="javascript:void(0)" data-order-by="timecreated">Date Created</a></li>
                            <li class=""><a href="javascript:void(0)" data-order-by="lastupdate">Date Updated</a></li>
                            <li class=""><a href="javascript:void(0)" data-order-by="duedate">Due Date</a></li>
                        </ul>
                        <a href="javascript:void(0)" data-toggle="tooltip" data-order-type="DESC" title="" data-original-title="is ascending"><span class="glyphicon glyphicon-arrow-up"></span></a>
                    </div>
                </div>
                <div class="checkbox fast-filter">
                    <label>
                        <input type="checkbox" name="assign-checkbox" autocomplete="off"> Assigned to me                    </label>
                </div>
                <div class="checkbox fast-filter">
                    <label>
                        <input type="checkbox" name="watch-checkbox" autocomplete="off" checked=""> Who i watch                    </label>
                </div>
                <div class="btn-more pull-right">
                    <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#advanced-filter">
                        <i class="fa fa-bars"></i> More                    </button>
                </div>
            </div>
        </div>

        <div id="advanced-filter" class="collapse">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="form-group">
                        <label>Search for:</label>
                        <div class="input-group">
                            <div class="input-group-btn search-panel">
                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" title="Everywhere">
                                    <span id="search_concept">Find in</span> <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu">
                                    <li class=""><a href="#subject">Title</a></li>
                                    <li class=""><a href="#description">Description</a></li>
                                    <li class="divider"></li>
                                    <li class="active"><a href="#all">Everywhere</a></li>
                                </ul>
                            </div>
                            <input type="hidden" name="serach_in" value="" id="search_param">         
                            <input type="text" class="form-control" name="search" value="" placeholder="Search term...">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Created between:</label>
                        <div class="input-group">
                            <span class="input-group-addon" id="from">From:</span>
                            <input type="text" class="form-control date-pick" name="from_date" value="" placeholder="Date" aria-describedby="from">
                            <span class="input-group-addon" id="to">To:</span>
                            <input type="text" class="form-control date-pick" name="to_date" value="" placeholder="Date" aria-describedby="to">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="type-select">Type:</label>
                        <div class="btn-group bootstrap-select form-control show-tick show-menu-arrow"><button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" data-id="type-select" title="Select type"><span class="filter-option pull-left">Select type</span>&nbsp;<span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Select type</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Bug</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Feature</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Support</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Task</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
                    </div>
                    <div class="form-group">
                        <label for="status-select">Status:</label>
                        <div class="btn-group bootstrap-select form-control show-tick show-menu-arrow"><button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" data-id="status-select" title="Select Status"><span class="filter-option pull-left">Select Status</span>&nbsp;<span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Select Status</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">New</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">To Do</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">In Progress</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="4"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Closed</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="5"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Rejected</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
                    </div>
                    <div class="form-group">
                        <label for="priority-select">Priority:</label>
                        <div class="btn-group bootstrap-select form-control show-tick show-menu-arrow"><button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" data-id="priority-select" title="Select Priority"><span class="filter-option pull-left">Select Priority</span>&nbsp;<span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Select Priority</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">High</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Normal</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="3"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">Low</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
                    </div>
                    <div>
                        <input type="submit" value="GO!" class="btn btn-primary">
                        <button type="button" class="btn btn-primary" onclick="reset()">Clear</button>
                        <a href="javascript:void(0)" class="btn btn-default" data-toggle="collapse" data-target="#advanced-filter">Close</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <div class="clearfix"></div>
    <hr>
    <div class="table-responsive"> 
        <table class="table dashboard">
            <thead>
                <tr>
                                   
                                            <th data-id="New">New <span class="num-issues"> <span class="the-num">0</span> Issues <span class="expired none-me"><span class="exp-the-num">0</span> Expired</span></span></th>
                                                <th data-id="To Do">To Do <span class="num-issues"> <span class="the-num">0</span> Issues <span class="expired none-me"><span class="exp-the-num">0</span> Expired</span></span></th>
                                                <th data-id="In Progress">In Progress <span class="num-issues"> <span class="the-num">0</span> Issues <span class="expired none-me"><span class="exp-the-num">0</span> Expired</span></span></th>
                                                <th data-id="Closed">Closed <span class="num-issues"> <span class="the-num">0</span> Issues <span class="expired none-me"><span class="exp-the-num">0</span> Expired</span></span></th>
                                                <th data-id="Rejeced">Rejected <span class="num-issues"> <span class="the-num">0</span> Issues <span class="expired none-me"><span class="exp-the-num">0</span> Expired</span></span></th>
                                        </tr>
            </thead>
            <tbody>
             <c:choose>
            <c:when test="${issues.size()>0}">
            		  
            	<tr>	  
               <c:forEach var="issue" items="${issues }">
							   	  
               <td data-status-id="${issue.status}" style="width:100%/4">
                    <div class="issue-box" data-have-status="" data-ticket-id="" style="border-left:5px solid ">
                                            <div style="width:80%">
                                                <div></div>
                                                <div class="ticket-subject"><span>${issue.subject}</span></div></div>
                                            <div><span class="timecreated" data-toggle="tooltip" title="${issue.type}"><span class="glyphicon glyphicon-pushpin"></span>${issue.type}</span></div>
                                            <div><span class="timecreated" data-toggle="tooltip" title="${issue.assignee}"><span class="glyphicon glyphicon-user"></span> ${issue.assignee}</span></div>
                                            <div><span class="timecreated" data-toggle="tooltip" title="Date Created"><span class="glyphicon glyphicon-time"></span></span></div>
                                            <div class="timer"><span class="" data-toggle="tooltip" title="must be done at ${issue.duedate }"><span class="glyphicon glyphicon-hourglass"></span>${issue.duedate }</span></div>
                                                <div class="visible-xs">
                                                    <span class="glyphicon glyphicon-sort"></span> 
                                                    <select onchange="ajax_stat_change(<?= $ticket['ticket_id'] ?>, this.value, 2, 1);">
                                                        <?php foreach ($statuses as $status) { ?>
                                                            <option value="" name=""></option>
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                            <div class="profile-img">
                                                    <a href=""><img src="assets/imgs/default/male.jpg" class="profile-img img-circle" data-toggle="tooltip" title="Assignee:${issue.assignee} "></a>
                                                   
                                            </div>
                                        </div>
                                        
                             
                            </td>
                            	</c:forEach>
                            
                    </tr>
                   </c:when>
                   <c:otherwise>     
      
                                    <tr>
                        <td colspan="5"><div class="alert alert-danger">There are no activities to show!</div></td>
                    </tr>
                    </c:otherwise>
                     </c:choose>
                                </tbody>
        </table>
    </div>
</div>
<script src="assets/js/bootstrap-datepicker.min.js"></script>

</div>    <footer class="blue-gradient">
        
       
    </footer>
  
<script src="assets/bootstrap-select-1.9.4/js/bootstrap-select.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script>
    $(function () {
        $('[data-toggle="popover"]').popover();
    })
</script>


</div></body></html>