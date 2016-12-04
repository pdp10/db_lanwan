
<%

      sql = " SELECT I.oid, to_char(I.data, 'DD Month YYYY') data, I.porta_in, I.porta_out, I.tipo, I.nome " +
            " FROM g013.INTERCONNESSIONI I, g013.PORTE P, g013.APPARATI A " +
            " WHERE (A.stato = 'Guasto') and (I.data <= ALL (select I.data from g013.INTERCONNESSIONI I)) " +
            " and (P.oid_apparato = A.oid) and (P.porta = I.porta_in) ";

      //out.print(sql);

%>
