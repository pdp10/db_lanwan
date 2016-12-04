<%

         //collocazione degli armadi nelle stanze piano e oid, nome dell'edificio cui appartengono, 
         //anche stanze senza armadi
         sql = " SELECT v.oid_armadio, v.oid_stanza, v.oid_piano, v.numero piano, v.edificio, v.oid_edificio " +
               " FROM g013.V_COLLOCAZIONI v ";
	
	//out.print(sql);

%>