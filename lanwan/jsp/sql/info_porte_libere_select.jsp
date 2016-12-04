
<%

         //elenco delle porte libere di un patch panel
         sql = " SELECT V.porta, V.tipo, V.oid_apparato, V.oid_armadio " +
               " FROM g013.V_PORTE_LIBERE_PP V";

	//out.print(sql);

%>