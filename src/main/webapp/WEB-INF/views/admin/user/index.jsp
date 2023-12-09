<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<h2 class="alert alert-warning">User</h2>
<c:set var="base" value="/admin/user" scope="request" />
<h4 style="color: red;">${messageError}${param.messageError}</h4>
<h4 style="margin-left: 20px" class="label label-success">${message}${param.message}</h4>

<ul style="margin-top: 20px" class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#tab1">Edit</a></li>
  <li ><a data-toggle="tab" href="#tab2">List</a></li>
</ul>

<div class="tab-content">
  <div id="tab1" class="tab-pane fade in active ">
  <jsp:include page="_form.jsp"></jsp:include>

  </div>
  <div id="tab2" class="tab-pane fade ">
  <jsp:include page="_table.jsp"></jsp:include>
  </div>

</div>