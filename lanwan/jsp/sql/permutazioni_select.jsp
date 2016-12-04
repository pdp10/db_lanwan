<%

	sql = " SELECT P.oid, to_char(P.data, 'DD Month YYYY') data, P.porta_in, P.porta_out " +
	      " FROM g013.PERMUTAZIONI P " +
              " ORDER BY P.oid ";

	// out.print(sql);
%>
