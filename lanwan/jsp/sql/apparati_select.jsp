<%

	sql = " SELECT A.oid, A.inventario, to_char(A.acquistato, 'DD Month YYYY') acquistato, A.oid_dislocazione, " +
              " A.oid_armadio, A.stato, A.tipo, A.funzionamento, A.ip, A.sn, A.pn, A.potenza" +
	      " FROM g013.V_APPARATI A " +
              " ORDER BY A.oid ";

	// out.print(sql);
%>