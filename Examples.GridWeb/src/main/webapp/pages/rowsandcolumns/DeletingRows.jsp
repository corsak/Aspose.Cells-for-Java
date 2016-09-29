<%@page language="java" contentType="text/html; charset=UTF-8" import="com.aspose.gridweb.*"  pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/head.jsp" %>
<script type="text/javascript" src="grid/acw_client/jquery-2.1.4.min.js"></script>
<title>Deleting Rows</title>
<%
ExtPage BeanManager=ExtPage.getInstance();
GridWebBean gridweb=BeanManager.getBean(request);
out.println(gridweb.getHTMLHead());
%>
</head>
<body>
<%

String filePath = application.getRealPath("/data.xls");

gridweb.setReqRes(request, response);
gridweb.importExcelFile(filePath);

//Accessing the reference of the worksheet that is currently active
GridWorksheet sheet = gridweb.getWorkSheets().get(gridweb.getActiveSheetIndex());

//Deleting 2nd row from the worksheet
sheet.getCells().deleteRow(1);

gridweb.prepareRender();

out.print(gridweb.getHTMLBody());

%>
</body>
</html>