--procedure.sql
 -- Basi di dati e sistemi informativi 2
 -- Progetto Lan/Wan, A.A. 2004/2005
 -- Gruppo: g013
 -- Studente: Piero Dalle Pezze
 -- Matricola 486228-sin
 -- Contents: script SQL per le funzioni richieste

-- funzione utilizzata per la funzione B (form transazionale)
create or replace function apparato_porta_ins (
		p_inv IN number,
		p_acq IN varchar2, 
		p_oid_ar IN number,
		p_stato IN varchar2, 
		p_tipo IN varchar2, 
		p_funz IN varchar2, 
		p_ip IN varchar2,
		p_sn IN number,
		p_pn IN number, 
		p_pot IN varchar2)
return number is
	w_oid V_APPARATI.oid%type;
	w_date V_APPARATI.acquistato%type;                 
begin
	w_date := to_date(p_acq, 'DD/MM/YYYY');
	INSERT INTO V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) VALUES (null, p_inv, w_date, p_oid_ar, p_oid_ar, p_stato, p_tipo, p_funz, p_ip, p_sn, p_pn, p_pot);
        --RETURNING oid INTO w_oid;
        select oid into w_oid from v_apparati where inventario = p_inv; 
	RETURN(w_oid);
end;
/