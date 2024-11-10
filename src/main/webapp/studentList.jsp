<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Coding With Sudhir</title>
<style type="text/css">
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f9;
	margin: 0;
	padding: 0;
	color: #333;
}

h1 {
	text-align: center;
	font-size: 2.2em;
	color: #004466;
	margin-top: 20px;
}

table {
	width: 90%;
	border-collapse: collapse;
	margin: 20px auto;
	background: #fff;
	border: 1px solid #ddd;
	border-radius: 6px;
	overflow: hidden;
}

thead tr {
	background-color: #007bff;
	color: white;
	font-size: 1.1em;
}

td, th {
	padding: 12px;
	border: 1px solid #ddd;
	text-align: center;
}

tbody tr:nth-of-type(even) {
	background-color: #f7f7f7;
}

tbody tr:hover {
	background-color: #e9f5ff;
}

div {
	display: flex;
	justify-content: center;
	margin-top: 20px;
}

a {
	font-size: 1em;
	color: #007bff;
	text-decoration: none;
	font-weight: bold;
	margin: 0 8px;
}

.page-link {
	display: inline-block;
	width: 35px;
	height: 35px;
	text-align: center;
	line-height: 35px;
	border-radius: 50%;
	background-color: #007bff;
	color: white;
	text-decoration: none;
	font-size: 1em;
	margin: 0 5px;
	transition: background-color 0.3s, color 0.3s;
}

.page-link:hover {
	background-color: #0056b3;
	color: #e9f5ff;
}

a[style] {
	color: #ccc;
}

</style>
</head>
<body>

	<h1>Student Details</h1>

	<table>
		<thead>
			<tr>
				<th>Roll Number</th>
				<th>Name</th>
				<th>Email</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${studentPage.content}">
				<tr>
					<td>${student.rollNumber}</td>
					<td>${student.name}</td>
					<td>${student.email}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div>
		<c:if test="${studentPage.hasContent()}">
			<c:if test="${studentPage.hasPrevious()}">
				<a href="/students?page=${studentPage.number - 1}">Previous</a>
			</c:if>
			<c:if test="${!studentPage.hasPrevious()}">
				<a href="#" style="color: #ccc; pointer-events: none;">Previous</a>
			</c:if>
			<c:forEach var="i" begin="0" end="${studentPage.getTotalPages() - 1}">
				<a href="/students?page=${i}" class="page-link">${i + 1}</a>
			</c:forEach>
			<c:if test="${studentPage.hasNext()}">
				<a href="/students?page=${studentPage.number + 1}">Next</a>
			</c:if>
			<c:if test="${!studentPage.hasNext()}">
				<a href="#" style="color: #ccc; pointer-events: none;">Next</a>
			</c:if>
		</c:if>
	</div>

</body>
</html>
