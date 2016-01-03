<%@page language="java" import="java.sql.*"%>
<%@page import="java.util.*" %>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.parser.ParseException"%>
<%
    String dept = (String)request.getParameter("dept");
    String sql  = "SELECT * FROM employees WHERE department='"+dept+"'";
 
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=null;
        conn=DriverManager.getConnection("jdbc:mysql://localhost/jspjsons","root","123456");
        ResultSet rs=null;
        Statement stm1=conn.createStatement();
 
        JSONArray list = new JSONArray();
        rs=stm1.executeQuery(sql);
        while(rs.next())
        {
            JSONObject obj=new JSONObject();
            obj.put("no", rs.getString("id"));
            obj.put("name", rs.getString("name"));
            obj.put("dept", rs.getString("department"));
            obj.put("addr", rs.getString("address"));
 
            list.add(obj);
        }
 
        out.print(list);
    }
    catch(Exception ex)
    {
        out.println("<h1>"+ex+"</g1>");
    }
%>