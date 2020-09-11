<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>create_project</title>
 <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/custom.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/bootstrap-select-1.9.4/css/bootstrap-select.min.css">
         <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet" type="text/css">
       
        <script src="assets/js/jquery.min.js"></script>
        <script src="lang/lang_EN.js"></script>
</head>
<body>
      <div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">Create Project</h4>
                </div>
                <div class="modal-body">
                    <form role="form" method="POST" enctype="multipart/form-data">
                        <input type="hidden" value="0" name="update">
                        <div class="form-group">
                            <label for="edit-proj">Edit Project: <a href="javascript:void(0);" data-toggle="popover" data-trigger="hover" title="" data-content="Select a project from the list to edit or create a new" data-original-title="Edit Project"><span class="glyphicon glyphicon-question-sign"></span></a></label>
                            <div class="btn-group bootstrap-select form-control show-tick show-menu-arrow"><button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" data-id="edit-proj" title="Nothing selected"><span class="filter-option pull-left">Nothing selected</span>&nbsp;<span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text"></span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">NewsApp</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div></div>
                        </div>
                        <div class="form-group">
                            <label for="title">Name:</label>
                            <input type="text" class="form-control" name="title" placeholder="Must have 3 or more symbols! Use only A-Za-z0-9_" value="" id="name">
                        </div>
                        <div class="form-group">
                            <label for="abbr">Abbreviation</label>
                            <input type="text" class="form-control" name="abbr" placeholder="Max length - 3 symbols. Only letters!" maxlength="3" value="" id="abbr">
                        </div>
                        <div class="checkbox check-sync">
                            <label><input type="checkbox" name="sync" value="">Sync email account</label>
                        </div>
                        <div id="sync">
                            <div class="form-group">
                                <label for="hostname">IMAP/POP3 Hostname:</label>
                                <input type="text" class="form-control" name="hostname" placeholder="Example: imap.gmail.com" value="" id="hostname">
                            </div>
                            <div class="form-group">
                                <label for="smtp_hostname">SMTP Hostname:</label>
                                <input type="text" class="form-control" name="smtp_hostname" placeholder="Example: smtp.gmail.com" value="" id="smtp_hostname">
                            </div>
                            <div class="form-group">
                                <label for="protocol">Protocol:</label>
                                <div class="btn-group bootstrap-select form-control"><button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" data-id="protocol" title="imap"><span class="filter-option pull-left">imap</span>&nbsp;<span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open"><ul class="dropdown-menu inner" role="menu"><li data-original-index="0" class="selected"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">imap</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="1"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">pop3</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li><li data-original-index="2"><a tabindex="0" class="" style="" data-tokens="null"><span class="text">nntp</span><span class="glyphicon glyphicon-ok check-mark"></span></a></li></ul></div><select class="selectpicker form-control" onchange="setPort('imap')" id="protocol" tabindex="-98">
                                    <option value="imap">imap</option>
                                    <option value="pop3">pop3</option>
                                    <option value="nntp">nntp</option>
                                </select></div>
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox" onclick="setPort('imap')" name="_ssl" value="1">SSL(imap/pop3)</label>
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox" onclick="setPort('ssl')" name="smtp_ssl" value="1">SSL(smtp)</label>
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox" name="self_signed_cert" value="1">Self-signed certificate</label>
                            </div>
                            <div class="form-group">
                                <label for="port">IMAP/POP3 Port:</label>
                                <input type="text" class="form-control" name="port" placeholder="Example: 993" value="143" id="port">
                            </div>
                            <div class="form-group">
                                <label for="smtp_port">SMTP Port:</label>
                                <input type="text" class="form-control" name="smtp_port" placeholder="Example: 587" value="587" id="smtp_port">
                            </div>
                            <div class="form-group">
                                <label for="folder">Folder:</label>
                                <input type="text" class="form-control" name="folder" placeholder="Example: INBOX" value="" id="folder">
                            </div>
                            <div class="form-group">
                                <label for="uname_h">Username:</label>
                                <input type="text" class="form-control" name="username" placeholder="Example: kiril@gmail.com" value="" id="uname_h">
                            </div>
                            <div class="form-group">
                                <label for="pass_h">Password:</label>
                                <input type="text" class="form-control" name="password" placeholder="Example: Password" value="" id="pass_h">
                            </div>
                            <a href="javascript:void(0);" id="check_conn" class="btn btn-info">Check connection <i class="fa fa-refresh" aria-hidden="true"></i></a>
                            <div id="check-errors" class="alert alert-danger"></div>
                            <div id="err_info" class="alert alert-danger"></div>
                        </div>
                    </form>
                    <div id="result"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" onclick="setProject('add_project')" class="btn btn-primary">Create</button>
                </div>
            </div>
        </div>
    </div>
  
</body>
</html>