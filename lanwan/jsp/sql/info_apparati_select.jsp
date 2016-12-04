
<%
        String num = request.getParameter("num");

	sql = " SELECT A.oid, A.inventario, to_char(A.acquistato, 'DD Month YYYY') acquistato, " +
              " A.oid_dislocazione, A.oid_armadio, A.stato, A.tipo, A.ip, A.sn, A.pn, A.potenza, " +
              " count(por.porta) porte " +
              " FROM g013.V_APPARATI A, g013.porte por, g013.PERMUTAZIONI per " +
              " WHERE A.funzionamento = '" + "A" + "' and (A.oid = por.oid_apparato) and " +
                     " por.porta = per.porta_in " +
              " GROUP BY A.oid, A.inventario, A.acquistato, A.oid_dislocazione, A.oid_armadio, " +
              " A.stato, A.tipo, A.ip, A.sn, A.pn, A.potenza ";

        if(num != null && !("".equals(num)) ) {
              sql += " HAVING count(por.porta) = " + num;
        }
        sql += " ORDER BY A.oid ";
	// out.print(sql);

%>