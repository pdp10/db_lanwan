<%@ include file="db_open.jsp" %>
<%@ include file="sql/auth_select.jsp" %>
<%		
	String loadPage = new String("");
		
	try {
		rs = stmt.executeQuery(sql);
		if (rs.next()) {

			Integer oidUtente = new Integer(rs.getInt("OID"));
			username = new String(rs.getString("USERNAME"));
			nome = new String(rs.getString("NOME"));
			Integer oidRuolo = new Integer(rs.getInt("OID_RUOLO"));
			String ruolo = new String(rs.getString("RUOLO"));


			session.setAttribute("s_oidUtente", oidUtente);
			session.setAttribute("s_oidRuolo", oidRuolo);
			session.setAttribute("s_username", username);
			session.setAttribute("s_ruolo", ruolo);
			session.setAttribute("s_nome", nome);

			loadPage = "index.jsp";

		} else {
			
			loadPage = "login.jsp?fail=1";

		}
		
		response.sendRedirect(loadPage);		
	} 
	catch (SQLException e) {
		out.print(e.getMessage());
	}
%>	
