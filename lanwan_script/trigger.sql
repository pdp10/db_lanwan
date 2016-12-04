--trigger.sql
 -- Basi di dati e sistemi informativi 2
 -- Progetto Lan/Wan, A.A. 2004/2005
 -- Gruppo: g013
 -- Studente: Piero Dalle Pezze
 -- Matricola 486228-sin
 -- Contents: script SQL dei comandi DDL per la definizione di sequence, trigger etc


--TRIGGER
--stati
create or replace trigger stati_aft_ins_upd_del after insert or update or delete on STATI for each row
begin
    if inserting then
	insert into JSTATI(stato, op) values (:new.stato, 'I');
    elsif updating then
	insert into JSTATI(stato, op) values (:new.stato, 'U');
    elsif deleting then
	insert into JSTATI(stato, op) values (:old.stato, 'D');
    end if;
end;
/

--apparati_tipi
create or replace trigger app_tipi_aft_ins_upd_del after insert or update or delete on APPARATI_TIPI for each row
begin
    if inserting then
	insert into JAPPARATI_TIPI(tipo, op) values (:new.tipo, 'I');
    elsif updating then
	insert into JAPPARATI_TIPI(tipo, op) values (:new.tipo, 'U');
    elsif deleting then
	insert into JAPPARATI_TIPI(tipo, op) values (:old.tipo, 'D');
    end if;
end;
/

--interconnessioni_tipi
create or replace trigger intercon_tipi_aft_ins_upd_del after insert or update or delete on INTERCONNESSIONI_TIPI for each row
begin
    if inserting then
	insert into JINTERCONNESSIONI_TIPI(tipo, op) values (:new.tipo, 'I');
    elsif updating then
	insert into JINTERCONNESSIONI_TIPI(tipo, op) values (:new.tipo, 'U');
    elsif deleting then
	insert into JINTERCONNESSIONI_TIPI(tipo, op) values (:old.tipo, 'D');
    end if;
end;
/

--responsabile_ass
create or replace trigger resp_ass_aft_ins_upd_del after insert or update or delete on RESPONSABILE_ASS for each row
begin
    if inserting then
	insert into JRESPONSABILE_ASS(nome, op) values (:new.nome, 'I');
    elsif updating then
	insert into JRESPONSABILE_ASS(nome, op) values (:new.nome, 'U');
    elsif deleting then
	insert into JRESPONSABILE_ASS(nome, op) values (:old.nome, 'D');
    end if;
end;
/

--prese__tipi
create or replace trigger prese_tipi_aft_ins_upd_del after insert or update or delete on PRESE_TIPI for each row
begin
    if inserting then
	insert into JPRESE_TIPI(tipo, op) values (:new.tipo, 'I');
    elsif updating then
	insert into JPRESE_TIPI(tipo, op) values (:new.tipo, 'U');
    elsif deleting then
	insert into JPRESE_TIPI(tipo, op) values (:old.tipo, 'D');
    end if;
end;
/

--marche_pc
create or replace trigger marche_pc_aft_ins_upd_del after insert or update or delete on MARCHE_PC for each row
begin
    if inserting then
	insert into JMARCHE_PC(marcapc, op) values (:new.marcapc, 'I');
    elsif updating then
	insert into JMARCHE_PC(marcapc, op) values (:new.marcapc, 'U');
    elsif deleting then
	insert into JMARCHE_PC(marcapc, op) values (:old.marcapc, 'D');
    end if;
end;
/

--marche_st
create or replace trigger marche_st_aft_ins_upd_del after insert or update or delete on MARCHE_ST for each row
begin
    if inserting then
	insert into JMARCHE_ST(marcast, op) values (:new.marcast, 'I');
    elsif updating then
	insert into JMARCHE_ST(marcast, op) values (:new.marcast, 'U');
    elsif deleting then
	insert into JMARCHE_ST(marcast, op) values (:old.marcast, 'D');
    end if;
end;
/

--potenze
create or replace trigger potenze_aft_ins_upd_del after insert or update or delete on POTENZE for each row
begin
    if inserting then
	insert into JPOTENZE(potenza, op) values (:new.potenza, 'I');
    elsif updating then
	insert into JPOTENZE(potenza, op) values (:new.potenza, 'U');
    elsif deleting then
	insert into JPOTENZE(potenza, op) values (:old.potenza, 'D');
    end if;
end;
/

--porte_tipi
create or replace trigger porte_tipi_aft_ins_upd_del after insert or update or delete on PORTE_TIPI for each row
begin
    if inserting then
	insert into JPORTE_TIPI(tipo, op) values (:new.tipo, 'I');
    elsif updating then
	insert into JPORTE_TIPI(tipo, op) values (:new.tipo, 'U');
    elsif deleting then
	insert into JPORTE_TIPI(tipo, op) values (:old.tipo, 'D');
    end if;
end;
/




--edifici
create sequence seq_edifici increment by 1 start with 1 maxvalue 999999999 nocycle;
create or replace trigger edifici_bef_ins_upd_del before insert or update or delete on EDIFICI for each row
begin
    if inserting then
	select seq_edifici.nextval into :new.oid from dual;
	insert into JEDIFICI(oid, nome, indirizzo, op) values (:new.oid, :new.nome, :new.indirizzo, 'I');
    elsif updating then
	if  (:new.oid <> :old.oid) then 
		raise_application_error(-20001,'Errore in EDIFICI: oid non alterabile');
	end if;
	insert into JEDIFICI(oid, nome, indirizzo, op) values (:old.oid, :new.nome, :new.indirizzo, 'U');
    elsif deleting then
	insert into JEDIFICI(oid, nome, indirizzo, op) values (:old.oid, :old.nome, :old.indirizzo, 'D');
    end if;
end;
/


--piani
create sequence seq_piani increment by 1 start with 1 maxvalue 999999999 nocycle;
create or replace trigger piani_bef_ins_upd_del before insert or update or delete on PIANI for each row
begin
    if (inserting or updating) and ( (:new.numero is null) or 
	  (:new.numero < 0) or
        (:new.oid_edificio is null) ) then 
		raise_application_error(-20002,'Errore in Piani: numero e oid_edificio non nulli');
    end if;
    if inserting then
	select seq_piani.nextval into :new.oid from dual;
	insert into JPIANI(oid, numero, oid_edificio, op) values (:new.oid, :new.numero, :new.oid_edificio, 'I');
    elsif updating then
	if (:new.oid <> :old.oid) then
		raise_application_error(-20003,'Errore in Piani: oid non alterabile');
        end if;
	insert into JPIANI(oid, numero, oid_edificio, op) values (:old.oid, :new.numero, :new.oid_edificio, 'U');
    elsif deleting then
	insert into JPIANI(oid, numero, oid_edificio, op) values (:old.oid, :old.numero, :old.oid_edificio, 'D');
    end if;
end;
/


--stanze
create sequence seq_stanze increment by 1 start with 1 maxvalue 999999999 nocycle;
create or replace trigger stanze_bef_ins_upd_del before insert or update or delete on STANZE for each row
begin
    if (inserting or updating) and (:new.oid_piano is null) then 
	raise_application_error(-20004,'Errore in Stanze: oid_piano non nullo');
    elsif inserting then
	select seq_stanze.nextval into :new.oid from dual;
	insert into JSTANZE(oid, oid_piano, telefono, descrizione, op) values (:new.oid, :new.oid_piano, :new.telefono, :new.descrizione, 'I');
    elsif updating then
	if (:new.oid <> :old.oid) then 
		raise_application_error(-20005,'Errore in Stanze: oid non alterabile');
    	end if;
	insert into JSTANZE(oid, oid_piano, telefono, descrizione, op) values (:old.oid, :new.oid_piano, :new.telefono, :new.descrizione, 'U');
    elsif deleting then
	insert into JSTANZE(oid, oid_piano, telefono, descrizione, op) values (:old.oid, :old.oid_piano, :old.telefono, :old.descrizione, 'D');
    end if;
end;
/


--porte
create sequence seq_porte increment by 1 start with 1 maxvalue 999999999 nocycle;
create or replace trigger porte_bef_ins_upd_del before insert or update or delete on PORTE for each row
begin
    if (inserting or updating) and ((:new.oid_apparato is null) or
       (:new.porta < 0)) then 
	raise_application_error(-20006,'Errore in Porte: oid_apparato non nullo, porta positivo');
    elsif inserting then
    	select seq_porte.nextval into :new.porta from dual;
	insert into JPORTE(porta, tipo, oid_apparato, op) values (:new.porta, :new.tipo, :new.oid_apparato, 'I');
    elsif updating then
        if (:new.porta <> :old.porta) then 
	      raise_application_error(-20007,'Errore in Porte: porta non alterabile');
        end if;
	insert into JPORTE(porta, tipo, oid_apparato, op) values (:old.porta, :new.tipo, :new.oid_apparato, 'U');
    elsif deleting then
	insert into JPORTE(porta, tipo, oid_apparato, op) values (:old.porta, :old.tipo, :old.oid_apparato, 'D');
    end if;
end;
/


--prese_rete
create sequence seq_prese_rete increment by 1 start with 1 maxvalue 999999999 nocycle;
create or replace trigger prese_rete_bef_ins_upd_del before insert or update or delete on PRESE_RETE for each row
begin
    if inserting then
	select seq_prese_rete.nextval into :new.oid from dual;
	insert into JPRESE_RETE(oid, etichetta, tipo, op) values (:new.oid, :new.etichetta, :new.tipo, 'I');
    elsif updating then
	if (:new.oid <> :old.oid) then
		raise_application_error(-20008,'Errore in Prese_rete: oid non alterabile');
    	end if;
	insert into JPRESE_RETE(oid, etichetta, tipo, op) values (:old.oid, :new.etichetta, :new.tipo, 'U');
    elsif deleting then
	insert into JPRESE_RETE(oid, etichetta, tipo, op) values (:old.oid, :old.etichetta, :old.tipo, 'D');
    end if;
end;
/


--permutazioni  (porta_in, porta_out unique)
create sequence seq_permutazioni increment by 1 start with 1 maxvalue 999999999 nocycle;
create or replace trigger permutazioni_bef_ins_upd_del before insert or update or delete on PERMUTAZIONI for each row
begin
    if (inserting or updating) and (:new.data is null) then
  	    raise_application_error(-20009,'Errore in Permutazioni: data non nulla');
    elsif inserting then
	select seq_permutazioni.nextval into :new.oid from dual;
	insert into JPERMUTAZIONI(oid, data, porta_in, porta_out, op) values (:new.oid, :new.data, :new.porta_in, :new.porta_out, 'I');
    elsif updating then
    	if (:new.oid <> :old.oid) then 
		raise_application_error(-20010,'Errore in Permutazioni: oid non alterabile');
    	end if;
	insert into JPERMUTAZIONI(oid, data, porta_in, porta_out, op) values (:old.oid, :new.data, :new.porta_in, :new.porta_out, 'U');
    elsif deleting then
	insert into JPERMUTAZIONI(oid, data, porta_in, porta_out, op) values (:old.oid, :old.data, :old.porta_in, :old.porta_out, 'D');
    end if;
end;
/


--interconnessioni (porta_in, porta_out unique)
create sequence seq_interconnessioni increment by 1 start with 1 maxvalue 999999999 nocycle;
create or replace trigger interconn_bef_ins_upd_del before insert or update or delete on INTERCONNESSIONI for each row
begin
    if (inserting or updating) and (:new.data is null) then
  	    raise_application_error(-20011,'Errore in Interconnessioni: data non nulla');
    elsif inserting then
	select seq_interconnessioni.nextval into :new.oid from dual;
	insert into JINTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome, op) values (:new.oid, :new.data, :new.porta_in, :new.porta_out, :new.tipo, :new.nome, 'I');
    elsif updating then
	if (:new.oid <> :old.oid) then 
		raise_application_error(-20012,'Errore in Interconnessioni: oid non alterabile');
    	end if;
	insert into JINTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome, op) values (:old.oid, :new.data, :new.porta_in, :new.porta_out, :new.tipo, :new.nome, 'U');
    elsif deleting then
	insert into JINTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome, op) values (:old.oid, :old.data, :old.porta_in, :old.porta_out, :old.tipo, :old.nome, 'D');
    end if;
end;
/




--TRIGGER INSTEAD OF
--dislocazioni
create sequence seq_v_dislocazioni increment by 1 start with 1 maxvalue 999999999 nocycle;
create trigger dislocazioni_inof_ins instead of insert on V_DISLOCAZIONI for each row 
begin 
    if (:new.tipo is null) or ((:new.tipo <> 'D') and (:new.tipo <> 'A')) then 
	raise_application_error(-20013,'Errore in Dislocazioni: tipo deve essere D o A'); 
    else 
	insert into DISLOCAZIONI(oid, luogo, tipo) values (seq_v_dislocazioni.nextval, :new.luogo, :new.tipo);
	insert into JDISLOCAZIONI(oid, luogo, tipo, op) values (seq_v_dislocazioni.currval, :new.luogo, :new.tipo, 'I');
 	if (:new.tipo = 'A') then 
	       insert into ARMADI(oid, oid_stanza) values (seq_v_dislocazioni.currval, :new.oid_stanza);
	       insert into JARMADI(oid, oid_stanza, op) values (seq_v_dislocazioni.currval, :new.oid_stanza, 'I');
	end if; 
    end if; 
end; 
/
create trigger dislocazioni_inof_upd instead of update on V_DISLOCAZIONI for each row 
begin 
    if  (:new.oid <> :old.oid) or 
	(:new.tipo is null) or 
	(:new.tipo <> :old.tipo) then 
	raise_application_error(-20014,'Errore in Dislocazioni: tipo deve essere D o A'); 
    else
	update DISLOCAZIONI set luogo = :new.luogo where oid = :old.oid;
	insert into JDISLOCAZIONI(oid, luogo, tipo, op) values (:old.oid, :new.luogo, :old.tipo, 'U');
	if (:old.tipo = 'A') then
		update ARMADI set oid_stanza = :new.oid_stanza where oid = :old.oid;
		insert into JARMADI(oid, oid_stanza, op) values (:old.oid, :new.oid_stanza, 'U');
	end if; 
    end if; 
end; 
/
create trigger dislocazioni_inof_del instead of delete on V_DISLOCAZIONI for each row 
begin 
    if (:old.tipo = 'A') then
		delete ARMADI where oid = :old.oid;
		insert into JARMADI(oid, oid_stanza, op) values (:old.oid, :old.oid_stanza, 'D');
    end if;
    delete DISLOCAZIONI where oid = :old.oid;
    insert into JDISLOCAZIONI(oid, luogo, tipo, op) values (:old.oid, :old.luogo, :old.tipo, 'D');
end; 
/



--apparati
create sequence seq_v_apparati increment by 1 start with 1 maxvalue 999999999 nocycle;
create trigger apparati_inof_ins instead of insert on V_APPARATI for each row
begin
    if (:new.funzionamento is null) or ((:new.funzionamento <> 'P') and (:new.funzionamento <> 'A')) then 
	raise_application_error(-20015,'Errore in Apparati: funzionamento deve essere P o A');
    else
	insert into APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento) 
		values (seq_v_apparati.nextval, :new.inventario, :new.acquistato, :new.oid_dislocazione, :new.oid_armadio, :new.stato, :new.tipo, :new.funzionamento);
	insert into JAPPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, op) 
		values (seq_v_apparati.currval, :new.inventario, :new.acquistato, :new.oid_dislocazione, :new.oid_armadio, :new.stato, :new.tipo, :new.funzionamento, 'I');
 	if (:new.funzionamento = 'A') then 
		insert into ATTIVI(oid, ip, sn, pn, potenza) 
			values (seq_v_apparati.currval, :new.ip, :new.sn, :new.pn, :new.potenza);
		insert into JATTIVI(oid, ip, sn, pn, potenza, op) 
			values (seq_v_apparati.currval, :new.ip, :new.sn, :new.pn, :new.potenza, 'I');
	else 
		insert into PASSIVI(oid) values (seq_v_apparati.currval);
		insert into JPASSIVI(oid, op) values (seq_v_apparati.currval, 'I');
	end if; 
    end if; 
end;
/
create trigger apparati_inof_upd instead of update on V_APPARATI for each row
begin
    if  (:new.oid <> :old.oid) or
	(:new.funzionamento is null) or
	(:new.funzionamento <> :old.funzionamento) then 
	    raise_application_error(-20016,'Errore in Apparati: funzionamento deve essere P o A');
    else
	update APPARATI
	set inventario = :new.inventario, acquistato = :new.acquistato, oid_dislocazione = :new.oid_dislocazione, 
	    oid_armadio = :new.oid_armadio, stato = :new.stato, tipo = :new.tipo
	where oid = :old.oid;
	insert into JAPPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, op) 
		values (:old.oid, :new.inventario, :new.acquistato, :new.oid_dislocazione, :new.oid_armadio, :new.stato, :new.tipo, :old.funzionamento, 'U');
 	if (:old.funzionamento = 'A') then 
		update ATTIVI
		set ip = :new.ip, sn = :new.sn, pn = :new.pn, potenza = :new.potenza
		where oid = :old.oid;
		insert into JATTIVI(oid, ip, sn, pn, potenza, op) 
			values (:old.oid, :new.ip, :new.sn, :new.pn, :new.potenza, 'U');
	else    insert into JPASSIVI(oid, op) values (:old.oid, 'U');
	end if;
     end if;
end;
/
create trigger apparati_inof_del instead of delete on V_APPARATI for each row
begin
    if (:old.funzionamento = 'A') then 
	    delete ATTIVI where oid = :old.oid;
	    insert into JATTIVI(oid, ip, sn, pn, potenza, op) 
			values (:old.oid, :old.ip, :old.sn, :old.pn, :old.potenza, 'D');
    else    delete PASSIVI where oid = :old.oid;
            insert into JPASSIVI(oid, op) values (:old.oid, 'D');
    end if;
   
    delete APPARATI where oid = :old.oid;
    insert into JAPPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, op) 
		values (:old.oid, :old.inventario, :old.acquistato, :old.oid_dislocazione, :old.oid_armadio, :old.stato, :old.tipo, :old.funzionamento, 'D');
end;
/




--periferiche
create sequence seq_v_periferiche increment by 1 start with 1 maxvalue 999999999 nocycle;
create trigger periferiche_inof_ins instead of insert on V_PERIFERICHE for each row
begin
    if (:new.oid_presa_rete is null) or 
       (:new.tipo is null) or
       ((:new.tipo <> 'C') and (:new.tipo <> 'S') and (:new.tipo <> 'P')) then
	raise_application_error(-20017,'Errore in Periferiche: oid_presa_rete non nulla, tipo deve essere C o S o P');
    else
	insert into PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo)
	values (seq_v_periferiche.nextval, :new.utente, :new.ip, :new.oid_presa_rete, :new.oid_stanza, :new.tipo);
	insert into JPERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, op)
	values (seq_v_periferiche.currval, :new.utente, :new.ip, :new.oid_presa_rete, :new.oid_stanza, :new.tipo, 'I');
	if (:new.tipo = 'P') then
		insert into STAMPANTI(oid, modellost, marcast) 
		values (seq_v_periferiche.currval, :new.modellost, :new.marcast);
		insert into JSTAMPANTI(oid, modellost, marcast, op) 
		values (seq_v_periferiche.currval, :new.modellost, :new.marcast, 'I');
	else
		insert into PC(oid, modellopc, marcapc, tipo)
		values (seq_v_periferiche.currval, :new.modellopc, :new.marcapc, :new.tipo);
		insert into JPC(oid, modellopc, marcapc, tipo, op)
		values (seq_v_periferiche.currval, :new.modellopc, :new.marcapc, :new.tipo, 'I');
		if (:new.tipo = 'S') then
			insert into SERVER(oid) values (seq_v_periferiche.currval);
			insert into JSERVER(oid, op) values (seq_v_periferiche.currval, 'I');
		end if;
	end if;
    end if;
end;
/
create trigger periferiche_inof_upd instead of update on V_PERIFERICHE for each row
begin
    if  (:new.oid <> :old.oid) or
        (:new.oid_presa_rete is null) or 
        (:new.tipo is null) or
	(:new.tipo <> :old.tipo) then
		raise_application_error(-20018,'Errore in Periferiche: oid non alterabile, oid_presa_rete non nulla, tipo deve essere C o S o P');
    else
	update PERIFERICHE
	set utente = :new.utente, ip = :new.ip, oid_presa_rete = :new.oid_presa_rete, oid_stanza = :new.oid_stanza
	where oid = :old.oid;
	insert into JPERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, op)
	values (:old.oid, :new.utente, :new.ip, :new.oid_presa_rete, :new.oid_stanza, :old.tipo, 'U');
 	if (:old.tipo = 'P') then 
		update STAMPANTI
		set  modellost = :new.modellost, marcast = :new.marcast
		where oid = :old.oid;
		insert into JSTAMPANTI(oid, modellost, marcast, op) values (:old.oid, :new.modellost, :new.marcast, 'U');
	else
		update PC
		set  modellopc = :new.modellopc, marcapc = :new.marcapc
		where oid = :old.oid;
		insert into JPC(oid, modellopc, marcapc, tipo, op)
		values (:old.oid, :new.modellopc, :new.marcapc, :old.tipo, 'U');
		if (:old.tipo = 'S') then
			insert into JSERVER(oid, op) values (:old.oid, 'U');
		end if;
	end if;
     end if;
end;
/
create trigger periferiche_inof_del instead of delete on V_PERIFERICHE for each row
begin
 	if (:old.tipo = 'P') then
            delete STAMPANTI where oid = :old.oid;
		insert into JSTAMPANTI(oid, modellost, marcast, op) values (:old.oid, :old.modellost, :old.marcast, 'D');
      else
           if (:old.tipo = 'S') then
               delete SERVER where oid = :old.oid;
	         insert into JSERVER(oid, op) values (:old.oid, 'D');
	     end if;           
	     delete PC where oid = :old.oid;
           insert into JPC(oid, modellopc, marcapc, tipo, op)
	     values (:old.oid, :old.modellopc, :old.marcapc, :old.tipo, 'D');
	end if;

      delete PERIFERICHE where oid = :old.oid;
	insert into JPERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, op)
	values (:old.oid, :old.utente, :old.ip, :old.oid_presa_rete, :old.oid_stanza, :old.tipo, 'D');
end;
/

