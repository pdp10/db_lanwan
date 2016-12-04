<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");

	sql = " SELECT U.oid, U.username, U.password, U.nome, R.oid oid_ruolo, R.ruolo" +
	      " FROM g013.utenti U, g013.ruoli R " +
   	      " WHERE U.username = '" + username + "'" +
   		" AND U.password = '" + password + "'" + 
                " AND U.oid_ruolo = R.oid ";

	// out.print(sql);
%>
