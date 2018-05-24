<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản Lý Tài Khoản</title>
<link href="/QLNS3/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/QLNS3/resources/css/stylesTK.css" rel="stylesheet">
</head>
<body>
	<c:import url="header.jsp"/>
    <div id="content">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <a href="/QLNS3/themcv"><button class="btn btn-success">Thêm</button></a>
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title">Danh sách chức vụ</h3>

              </div>
              <div class="panel-body">
                <input class="form-control" id="dev-table-filter"
                  data-action="filter" data-filters="#dev-table"
                  placeholder="Từ khóa" type="text">
              </div>


					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>
								<th>Mã Chức Vụ</th>
								<th>Tên Chức Vụ</th>
								<th>Mô Tả Công Việc</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="chucvu" items="${listChucVu }">
							<tr>
								<td>${chucvu.getMacv()}</td>
								<td>${chucvu.getTencv()}</td>
								<td>${chucvu.getMotacongviec()}</td>
								<td><form action="chucvu?macv=${chucvu.getMacv() }" method="post"><button class="btn btn-warning">Xóa</button></form></td>
								<td><a href="chucvu/${chucvu.getMacv() }"><button class="btn btn-primary">Sửa</button></a></td>
							</tr>
							</c:forEach>
				
						</tbody>
					</table>
            </div>
          </div>
        </div>
      </div>
      
    </div><!--#content-->


    <div id="footer">
      
    </div><!--#footer-->
    
    <script src="/QLNS3/resources/bootstrap/js/jquery.min.js"></script>
    
    <script src="/QLNS3/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>