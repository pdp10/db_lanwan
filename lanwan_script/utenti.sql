--utenti.sql
 -- Basi di dati e sistemi informativi 2
 -- Progetto Lan/Wan, A.A. 2004/2005
 -- Gruppo: g013
 -- Studente: Piero Dalle Pezze
 -- Matricola 486228-sin
 -- Contents: script SQL dei comandi DDL per la definizione di utenti e ruoli


--tables
--ruoli
create table RUOLI (
	oid number(2) not null primary key using index tablespace INDX,
	ruolo varchar2(25) not null unique using index tablespace INDX
);

--utenti
create table UTENTI (
	oid number(10) not null primary key using index tablespace INDX,
	username varchar2(15) not null unique using index tablespace INDX,
	password varchar2(15) not null,
	nome varchar2(15) not null,
	oid_ruolo number(2) not null,
	constraint fk_ruoli foreign key (oid_ruolo) references RUOLI(oid)
);


--journal
--journal della tabella utenti
create table JUTENTI as (select * from UTENTI where 1 = 0);
alter table JUTENTI add op char(1) check(op in('I','U','D'));
alter table JUTENTI add data_op date default sysdate;

--journal della tabella ruoli
create table JRUOLI as (select * from RUOLI where 1 = 0);
alter table JRUOLI add op char(1) check(op in('I','U','D'));
alter table JRUOLI add data_op date default sysdate;


--TRIGGER
create sequence seq_utenti increment by 1 start with 1 maxvalue 999999999 nocycle;
create or replace trigger utenti_bef_ins_upd_del before insert or update or delete on UTENTI for each row
begin
    if (length(:new.password) < 4) or (length(:new.password) > 16) then 
            raise_application_error(-20019,'Errore in Utenti: lunghezza pwd [5,15]');
    elsif inserting then
  		select seq_utenti.nextval into :new.oid from dual;
		insert into JUTENTI(oid, username, password, nome, oid_ruolo, op) 
		values (:new.oid, :new.username, :new.password, :new.nome, :new.oid_ruolo, 'I');
    elsif updating then
	if  (:new.oid <> :old.oid) or (:new.username <> :old.username) or (:new.nome <> :old.nome) then 
		raise_application_error(-20020,'Errore in Utenti: oid, nome e username non alterabili');
	else insert into JUTENTI(oid, username, password, nome, oid_ruolo, op) 
	     values (:old.oid, :old.username, :new.password, :old.nome, :new.oid_ruolo, 'U');
	end if;
    elsif deleting then
           insert into JUTENTI(oid, username, password, nome, oid_ruolo, op) 
	     values (:old.oid, :old.username, :old.password, :old.nome, :old.oid_ruolo, 'D');
    end if;
end;
/

create sequence seq_ruoli increment by 1 start with 1 maxvalue 999999999 nocycle;
create or replace trigger ruoli_bef_ins_upd before insert or update or delete on RUOLI for each row
begin
    if inserting then
	select seq_ruoli.nextval into :new.oid from dual;
	insert into JRUOLI(oid, ruolo, op) values (:new.oid, :new.ruolo, 'I');
    elsif updating then
      if (:new.oid <> :old.oid) then
		raise_application_error(-20021,'Errore in Ruoli: oid non alterabile');
      else insert into JRUOLI(oid, ruolo, op) values (:old.oid, :new.ruolo, 'U');
      end if;
    elsif deleting then
      insert into JRUOLI(oid, ruolo, op) values (:old.oid, :old.ruolo, 'D');
    end if;
end;
/

insert into RUOLI(oid, ruolo) values (null, 'amministratore');
insert into RUOLI(oid, ruolo) values (null, 'gestore');
insert into RUOLI(oid, ruolo) values (null, 'consultatore');

insert into UTENTI(oid, username, password, nome, oid_ruolo) values (null, 'admin', 'admin', 'Penelope', 1);
insert into UTENTI(oid, username, password, nome, oid_ruolo) values (null, 'gesto', 'gesto', 'Calliope', 2);
insert into UTENTI(oid, username, password, nome, oid_ruolo) values (null, 'consu', 'consu', 'Circe', 3);
