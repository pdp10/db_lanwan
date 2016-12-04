<%

	sql = " SELECT I.oid, to_char(I.data, 'DD Month YYYY') data, I.porta_in, I.porta_out, I.tipo, I.nome " +
	      " FROM g013.INTERCONNESSIONI I " +
              " ORDER BY I.oid ";

	// out.print(sql);
%>
