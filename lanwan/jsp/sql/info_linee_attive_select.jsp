

<%
       nome = request.getParameter("nome");
 
       sql = " SELECT count(*) linee_attive, I.tipo " +
             " FROM g013.INTERCONNESSIONI I ";

       if(nome != null && !("".equals(nome)) ) {
             sql += " WHERE I.nome = '" + nome + "' ";
       }

       sql += " GROUP BY I.tipo ";

       //out.print(sql);

%>
