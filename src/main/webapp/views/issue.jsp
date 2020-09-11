<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en"><head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
                <title>Create new Issue</title>
        
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/custom.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/bootstrap-select-1.9.4/css/bootstrap-select.min.css">
         <script src="assets/js/newIssuePage.js"></script>
  
        
    <body>
        <div id="wrapper">
            <div id="content">
 
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
                                   <li class="active"><a href="/activity_home" title="Go to Tickets"><i class="fa fa-ticket"></i>Activity</a></li>
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
                                   <li><a href="/activity_home">Activity</a></li>
                                            <li class="active"><a href="/activity_issue">New Issue</a></li>
                                          <li><a href="/activity_dashboard">Dashboard</a></li>
                             </ul>
                         <ul class="nav navbar-nav navbar-right">
                                                    <li class="dropdown mine-dropdown"> 
                                                        <a class="dropdown-toggle" aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown" href="#">
                                                                    <img src="assets/imgs/default/male.jpg" alt="profile" class="profile-img">
                            Demonstration Account                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                              <li><a href="profile.html"><i class="fa fa-user"></i> Profile</a></li>
                              <li>
                                <a href="javascript:void(0);" id="notifPopover" data-toggle="popover" data-original-title="" title="">
                                    <i class="fa fa-flag-o"></i> Notifications                                    <span class="badge">0</span>
                                </a>
                            </li>
                            <li class="divider" role="separator"></li>
                            <li><a href="/login"><i class="fa fa-sign-out"></i> Logout</a></li>
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
        <br>
    </div>
<div id="newissue">
    <h1>New Issue</h1>
        <form class="form-horizontal newissue" role="form" method="post" action="/create_issue" enctype="multipart/form-data">
              <div class="form-group">
                     <label class="control-label col-sm-2" for="type">Type *</label>
                      <div class="col-sm-10">
                               <select class="selectpicker form-control show-tick show-menu-arrow" name="type" id="type" value="${issue.type}" >
                                    <option >Task</option>
                                    <option >Bug</option>
                                    <option>Feature</option>
                                    <option>Support</option>
                                 </select>
                      </div>
                </div>
               <div class="form-group">
                    <label class="control-label col-sm-2" for="subject">Subject *</label>
                        <div class="col-sm-10">
                                      <input type="text" class="form-control" name="subject" maxlength="200" value="${issue.subject}" id="subject" placeholder="Enter a subject of issue">
                         </div>
                </div>
               <div class="form-group">
                           <label class="control-label col-sm-2" for="description">Description</label>
                                   <div class="col-sm-10">
                                             <input type="text" class="form-control" name="description" maxlength="200" value="${issue.description}" id="subject" placeholder="Enter description">
                                     </div>
                </div>
                 <div class="form-group">
                         <label class="control-label col-sm-2" for="status">Status *</label>
                                <div class="col-sm-10">
                                          <select class="selectpicker form-control show-tick show-menu-arrow"  id="status" name="status" value="${issue.status}">
                                              <option>New</option>
                                                <option>To Do</option>
                                              <option >In Progress</option>
                                                <option>Rejected</option>
                                             </select>
                                 </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="priority">Priority *</label>
                    <div class="col-sm-10">
                       <select class="selectpicker form-control show-tick show-menu-arrow"  id="priority" name="priority" value="${issue.priority }">
                                 
                            <option value="High">High</option>
                            <option value="Normal">Normal</option>
                            <option value="Low">Low</option>
                            </select>
        
                        
                    </div>
                </div>
                <div class="form-group">
                        <label class="control-label col-sm-2" for="assignee">Assignee</label>
                        <div class="col-sm-10">
                            <select class="selectpicker form-control show-tick show-menu-arrow" name="assignee"  id="assignee" value="${issue.assignee}" >
                                  <option>Nothing selected</option>
                                  <c:forEach var="user" items="${users }">
							             	<option>${user.username}</option>
                                         
						       	</c:forEach>
                                </select>
            
                        
                        </div>
                 </div>
                
               
                 <div class="form-group">
                      <label class="control-label col-sm-2" for="duedate">Due Date</label>
                       <div class="col-sm-10">
                          <input type="text" class=" date-pick form-control " name="duedate" id="duedate" value="${issue.duedate}" placeholder="dd.mm.yyy" data-provide="datepicker">
                       </div>
                 </div>
               <script>
                 $(document).ready(function () {
    $('#datepicker').datepicker({
        calendarWeeks: true,
        autoclose: true,
        todayHighlight: true,
        format: 'dd.mm.yyyy'
    });
    </script>
    
                 
                
            
                 
        </form>
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

</div>
</div></body></html>