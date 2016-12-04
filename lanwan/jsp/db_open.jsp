<%@ include file="costanti.jspf" %>
<%@ page import="java.sql.*, java.lang.String.*" %>
<%	
        Connection conn = null;
	Statement  stmt = null;
	ResultSet    rs = null;
	
	// Load the JDBC driver
        DriverManager.registerDriver (new oracle.jdbc.driver.OracleDriver());

	conn = DriverManager.getConnection(db, user, pass);

	try {
		if (conn.getAutoCommit()) {
			conn.setAutoCommit(false);
		}
	}
	catch (SQLException e) {
		out.print(e.getMessage());
	}
	
	stmt = conn.createStatement();
%>