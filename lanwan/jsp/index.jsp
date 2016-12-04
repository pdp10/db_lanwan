<%@ include file="standard_html_header.jsp" %>


<ul>
<%
  try {
	Integer oidRuolo = (Integer)session.getAttribute("s_oidRuolo") ;
	int idr = oidRuolo.intValue();
	switch(idr) {
	        case 1:		// MENU AMMINISTRATORE %>
	            <p class="menuTitle"><img src="images/admin.gif" border="0"> Amministrazione</p>
                    <li><a href="../info/relazione.html" TARGET="a">Informazioni sul Progetto</a></li>
                    <li><a href="utenti.jsp">Gestione utenti</a></li>
	            <li><a href="ruoli.jsp">Gestione ruoli</a></li>
	            <li><a href="edifici_form.jsp">Gestione edifici</a></li>
	            <li><a href="piani_form.jsp">Gestione piani di edifici</a></li>
	            <li><a href="stanze_form.jsp">Gestione stanze di edifici</a></li>
	            <li><a href="dislocazioni_form.jsp">Gestione dislocazioni apparati di rete</a></li>
                    <li><a href="periferiche_form.jsp">Gestione periferiche</a></li>
                    <li><a href="marche_pc_form.jsp">Gestione marche pc</a></li>
                    <li><a href="marche_st_form.jsp">Gestione marche stampanti</a></li>
                    <li><a href="stati_form.jsp">Gestione degli stati di un apparato di rete</a></li>
                    <li><a href="apparati_tipi_form.jsp">Gestione dei tipi di apparati di rete</a></li>
                    <li><a href="potenze_form.jsp">Gestione delle potenze di un apparato di rete</a></li>
                    <li><a href="porte_tipi_form.jsp">Gestione del tipo di porte di un apparato di rete</a></li>
                    <li><a href="prese_tipi_form.jsp">Gestione del tipo di prese di rete</a></li>
                    <li><a href="interconnessioni_tipi_form.jsp">Gestione dei tipi di interconnessioni</a></li>
                    <li><a href="responsabile_ass_form.jsp">Gestione dei responsabili di assistenza</a></li>
<%  	             //break;        aggiunge anche i menu 2 e 3
	        case 2: 	// MENU GESTORE %>
	            <p class="menuTitle"><img src="images/work.GIF" border="0"> Gestione</p>
                    <li><a href="apparati_form.jsp">Gestione apparati di rete</a></li>
                    <li><a href="porte_form.jsp">Gestione delle porte degli apparati di rete</a></li>
                    <li><a href="prese_rete_form.jsp">Gestione prese di rete</a></li>
                    <li><a href="interconnessioni_form.jsp">Gestione linee di interconnessione</a></li>
                    <li><a href="permutazioni_form.jsp">Gestione link di permutazione</a></li>
                    <li><a href="apparato_porta_form1.jsp">FUNZIONE B5 form transazionale: crea nuovo apparato e una nuova porta</a></li>

<%		    break;
                default:        // MENU CONSULTATORE %>
	            <p class="menuTitle"><img src="images/drama.gif" border="0"> Consultazione</p>
                    <li><a href="edifici.jsp">Visione edifici</a></li>
                    <li><a href="piani.jsp">Visione piani</a></li>
                    <li><a href="stanze.jsp">Visione stanze</a></li>
                    <li><a href="dislocazioni.jsp">Visione dislocazioni</a></li>
                    <li><a href="apparati.jsp">Visione apparati</a></li>
                    <li><a href="periferiche.jsp">Visione periferiche</a></li> 
                    <li><a href="porte.jsp">Visione porte</a></li>
                    <li><a href="permutazioni.jsp">Visione permutazioni</a></li>
                    <li><a href="interconnessioni.jsp">Visione interconnessioni</a></li>
                    <li><a href="prese_rete.jsp">Visione prese di rete</a></li>
<%               break;
		}
	}
	catch(NullPointerException e){
		out.print("<b>ESEGUIRE L'AUTENTICAZIONE</b>");
	}
%>
        <p class="menuTitle"><img src="images/eis.gif" border="0"> Funzionalita'</p>
        <li><a href="info_stanze.jsp">Informazioni dettagliate sulle stanze</a></li>
        <li><a href="info_porte_libere.jsp">Porte libere dei patch panel a disposizione</a></li>
        <li><a href="info_collocazione.jsp">Collocazione degli armadi tecnologici in stanze/piani/edifici</a></li>
        <li><a href="info_apparati.jsp">FUNZIONE B4 apparati attivi con almeno una porta permutata con eventuale filtro</a></li>
        <li><a href="info_linee_attive.jsp">FUNZIONE B6 linee attive con eventuale filtro e linea guasta da piu' tempo</a></li>
        <li><a href="info_armadi.jsp">FUNZIONE A1 armadi contenenti almeno un apparato attivo con eventuale filtro</a></li>
</ul>
<br/>
<br/>
<br/>
<br/>
<marquee align="middle" behavior="alternate" scrollamount="5"> 
Web application by <a href="mailto:<%= mail %>" target="_blank"><%= studente %></a> 
</marquee>
<br/>
<br/>

</body>
</html>