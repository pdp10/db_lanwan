
<%

       String num = request.getParameter("num");

       sql = " SELECT arm.oid, arm.oid_stanza, count(app.oid_armadio) conta " +
             " FROM g013.ARMADI arm, g013.APPARATI app " +
             " WHERE (app.funzionamento = 'A') and (arm.oid = app.oid_armadio) " +
             " GROUP BY arm.oid, arm.oid_stanza ";

       if ( num != null && !("".equals(num)) ) {
             sql += " HAVING count(app.oid_armadio) = " + num;
       }
        sql += " ORDER BY arm.oid ";
       //out.print(sql);

%>
