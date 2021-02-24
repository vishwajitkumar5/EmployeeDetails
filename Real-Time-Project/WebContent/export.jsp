<%@ page import="java.io.*,java.sql.*"%>
<html>
<body>
<%
String filename = "c:\\csv\\csv_file.csv";
Connection conn = null;
String url = "jdbc:mysql://localhost:3306/";
String dbName = "employees";
String driver = "com.mysql.jdbc.Driver";
String userName = "root";
String password = "vishu";
Statement stmt;
try
{
FileWriter fw = new FileWriter(filename);
fw.append("Id");
fw.append(',');
fw.append("First Name");
fw.append(',');
fw.append("Last Name");
fw.append(',');
fw.append("Father Name");
fw.append(',');
fw.append("Email Id");
fw.append(',');
fw.append("Blood Group");
fw.append(',');
fw.append("Address");
fw.append(',');
fw.append("Contact");
fw.append('\n');
Class.forName(driver).newInstance();
conn = DriverManager.getConnection(url+dbName,userName,password);
//RETRIEVING DATA FROM DATABASE
String query = "select * from employee7";
stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(query);
while(rs.next())
{
fw.append(rs.getString(1));
fw.append(',');
fw.append(rs.getString(2));
fw.append(',');
fw.append(rs.getString(3));
fw.append(',');
fw.append(rs.getString(4));
fw.append(',');
fw.append(rs.getString(5));
fw.append(',');
fw.append(rs.getString(6));
fw.append(',');
fw.append(rs.getString(7));
fw.append(',');
fw.append(rs.getString(8));
fw.append('\n');
}
fw.flush();
fw.close();
conn.close();
out.println("Successfully Created Csv file.");
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>