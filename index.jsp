<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
<title>JSP JSON Tester</title>
 
<script src="jquery-1.11.1.min.js"></script>
 
</head>
<body bgcolor="white">
    <div id="con">
        <label>What department you want to show? (IT / COMM / HR / FINANCE)</label><br/>
        <input id="dept" type="text" name="dept" placeholder="Department"/>
        <button id="conBtn" type="submit">Submit</button>
    </div><br/>
 
    <div id="json" style="display: none;">
		<h3>JSON Data</h3>
		<p id="conCode"></p><br/>
	</div>
    
	<div id="table"  style="display:none;">
		<h3>Table Result</h3>
        <table border="1" padding="1">
            <thead>
                <th>No</th>
                <th>Name</th>
                <th>Department</th>
                <th>Address</th>
            </thead>
            <tbody id="tableBody">
            </tbody>
        </table>
    </div>
 
    <script>
        function submitForm(){
            var inp = $('#dept').val().toUpperCase();
 
            $.ajax({
                async: false,
                type: "GET",
                contentType: "application/json; charset=utf-8",
                url: "services.jsp",
                data: { dept: inp}
            }).success(function(data){
                var jsondata = JSON.parse(data);
                loadData(jsondata);
				$('#conCode').html(data);
            }).fail(function(jqXHR, textStatus){
                console.log("[AJAX] Error: JSON WSDL Lookup>>>" + textStatus);
            }).done(function(){
                console.log("[AJAX] Complete: JSON WSDL Lookup");
            });
        }
 
        function loadData(datas){
            var sb = '';
            var table = $('#tableBody');
            $('#json').show();
            $('#table').show();
            table.html('');
 
            $.each(datas, function(index, value){
                sb += '<tr>';
                sb += '    <td>' + value.no + '</td>';
                sb += '    <td>' + value.name + '</td>';
                sb += '    <td>' + value.dept + '</td>';
                sb += '    <td>' + value.addr + '</td>';
                sb += '</tr>';
            });
 
            table.append(sb);
        }
 
        $(function(){
            $('#conBtn').click(function(e){
                e.preventDefault();
 
                submitForm();
            });
        });
    </script>
</body>
</html>