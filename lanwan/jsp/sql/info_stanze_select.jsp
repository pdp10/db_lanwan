<%

        /*id stanze inserite con oid, numero del piano 
         *e oid, nome dell'edificio cui appartengono*/
        sql = " SELECT s.oid oid_stanza, p.oid oid_piano, e.oid oid_edificio, " +
	      " p.numero piano, e.nome edificio " +
	      " FROM g013.edifici e, g013.piani p, g013.stanze s " +
              " WHERE (p.oid_edificio = e.oid) and (s.oid_piano = p.oid) ";

	// out.print(sql);
%>