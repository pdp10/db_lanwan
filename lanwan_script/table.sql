--table.sql
 -- Basi di dati e sistemi informativi 2
 -- Progetto Lan/Wan, A.A. 2004/2005
 -- Gruppo: g013
 -- Studente: Piero Dalle Pezze
 -- Matricola 486228-sin
 -- Contents: script SQL dei comandi DDL per la definizione dello schema, viste


--TABLE
--Elementary tables
--Specifica i possibili stati di un apparato di rete.
create table STATI(
	stato varchar2(20) not null primary key using index tablespace INDX
);

--Elenco di apparati di rete utilizzabili in una rete Lan/Wan.
create table APPARATI_TIPI(
	tipo varchar2(25) not null primary key using index tablespace INDX
);

--Specifica la tipologia delle interconnesioni.
create table INTERCONNESSIONI_TIPI(
	tipo varchar2(20) not null primary key using index tablespace INDX
);

--Specifica un elenco di responsabili d'assistenza.
create table RESPONSABILE_ASS(
	nome varchar2(20) not null primary key using index tablespace INDX
);

--Specifica la tipologia delle prese di rete.
create table PRESE_TIPI(
	tipo varchar2(20) not null primary key using index tablespace INDX
);

--Elenco di marche di PC.
create table MARCHE_PC(
	marcapc varchar2(20) not null primary key using index tablespace INDX
);

--Elenco di marche di stampanti di rete.
create table MARCHE_ST(
	marcast varchar2(20) not null primary key using index tablespace INDX
);

--Elenco delle potenze riferite agli apparati attivi a disposizione.
create table POTENZE(
	potenza varchar2(20) not null primary key using index tablespace INDX
);

--Specifica il tipo di porta.
create table PORTE_TIPI(
	tipo varchar2(20) not null primary key using index tablespace INDX
);


--Composed tables
--Elenco di edifici nelle quali si vuol monitorare la rete.
create table EDIFICI(
	oid number(10) not null primary key using index tablespace INDX,
	nome varchar2(20),
	indirizzo varchar2(50)
);


--Stabilisce un elenco di piani.
create table PIANI(
	oid number(10) not null primary key using index tablespace INDX,
	numero number(3) not null,
	oid_edificio number(10) not null,                     --UML: diamante pieno.
	constraint fk_piani_edifici foreign key (oid_edificio) references EDIFICI(oid)
);


--Identifica le stanze appartenenti ad un edificio e ad un suo particolare piano.
create table STANZE(
	oid number(10) not null primary key using index tablespace INDX,
	oid_piano number(10) not null,                          --UML: diamante pieno
	telefono number(10),
	descrizione varchar2(200),
	constraint fk_stanze_piani foreign key (oid_piano) references PIANI(oid)
);


--In generale precisa la dislocazione di un apparato di rete.
create table DISLOCAZIONI(
	oid number(5) not null primary key using index tablespace INDX,
	luogo varchar2(20),
	tipo char(1) default 'D' not null check(tipo in('D','A'))  --D = dislocazione qualsiasi, A = armadio tecnologico
);


--Elenco degli armadi tecnologici nella rete, contenenti gli apparati di rete. (sottoclasse di DISLOCAZIONI).
create table ARMADI(
	oid number(5) not null primary key using index tablespace INDX,
	oid_stanza number(10),                                     --UML: diamante vuoto
	constraint fk_armadi$dislocazioni foreign key (oid) references DISLOCAZIONI(oid),
	constraint fk_armadi_stanze foreign key (oid_stanza) references STANZE(oid)
);


--Elenco degli apparati a disposizione.
create table APPARATI(
	oid number(10) not null primary key using index tablespace INDX,
	inventario number(10) not null unique using index tablespace INDX,
	acquistato date,
	oid_dislocazione number(5),
	oid_armadio number(5),                                     --UML: diamante vuoto
	stato varchar2(20),
	tipo varchar2(25),
	funzionamento char(1) default 'P' not null check(funzionamento in('P','A')),
	constraint fk_apparati_dislocazioni foreign key (oid_dislocazione) references DISLOCAZIONI(oid),
	constraint fk_apparati_armadi foreign key (oid_armadio) references ARMADI(oid),
	constraint fk_apparati_stati foreign key (stato) references STATI(stato),
	constraint fk_apparati_apparati_tipi foreign key (tipo) references APPARATI_TIPI(tipo)
);


--Elenco degli apparati attivi. (sottoclasse di APPARATI)
create table ATTIVI(
	oid number(10) not null primary key using index tablespace INDX,
	ip varchar(15) unique using index tablespace INDX,
	sn number(15) unique using index tablespace INDX,
	pn varchar(15) unique using index tablespace INDX,
	potenza varchar2(20),
	constraint fk_attivi$apparati foreign key (oid) references APPARATI(oid),
	constraint fk_attivi_potenze foreign key (potenza) references POTENZE(potenza)
);


--Elenco degli apparati passivi. (sottoclasse di APPARATI)
create table PASSIVI(
	oid number(10) not null primary key using index tablespace INDX,
	constraint fk_passivi$apparati foreign key (oid) references APPARATI(oid)
);


--Elenco delle porte esistenti.
create table PORTE(
	porta number(10) not null primary key using index tablespace INDX,
	tipo varchar2(20),
	oid_apparato number(10) not null,
	constraint fk_porte_porte_tipi foreign key (tipo) references PORTE_TIPI(tipo),
	constraint fk_porte_apparati foreign key (oid_apparato) references APPARATI(oid)
);


--Specifica il luogo della presa di rete e a quale armadio e' connessa.
create table PRESE_RETE(
	oid number(10) not null primary key using index tablespace INDX,
	etichetta number(10) unique using index tablespace INDX,
	tipo varchar2(20),
	constraint fk_prs_rt_prt foreign key (etichetta) references PORTE(porta),
	constraint fk_prs_rt_prs_tp foreign key (tipo) references PRESE_TIPI(tipo)
);


--Elenco di tutti i link di permutazione, tra apparati di rete.
create table PERMUTAZIONI(
	oid number(10) not null primary key using index tablespace INDX,
	data date not null,
	porta_in number(10) unique using index tablespace INDX,
	porta_out number(10) unique using index tablespace INDX,
	constraint fk_permut_prt_in foreign key (porta_in) references PORTE(porta),
	constraint fk_permut_prt_out foreign key (porta_out) references PORTE(porta)
);


--Elenco di tutte le interconnessioni, tra apparati di rete passivi.
create table INTERCONNESSIONI(
	oid number(10) not null primary key using index tablespace INDX,
	data date not null,
	porta_in number(10) unique using index tablespace INDX,
	porta_out number(10) unique using index tablespace INDX,
	tipo varchar2(20),
	nome varchar2(20),
	constraint fk_interc_prt_in foreign key (porta_in) references PORTE(porta),
	constraint fk_interc_prt_out foreign key (porta_out) references PORTE(porta),
	constraint fk_interc_int_tipi foreign key (tipo) references INTERCONNESSIONI_TIPI(tipo),	
	constraint fk_interc_resp foreign key (nome) references RESPONSABILE_ASS(nome)
);


--Elenco di tutte le periferiche presenti nella rete.
create table PERIFERICHE(
	oid number(10) not null primary key using index tablespace INDX,
	utente varchar2(30),
	ip varchar2(15) unique using index tablespace INDX,
	oid_presa_rete number(10) not null unique using index tablespace INDX,
	oid_stanza number(10),                                 --UML: diamante vuoto
	tipo char(1) default 'C' not null check(tipo in('C','S','P')),  --C=Computer, S=Server, P=Printer
	constraint fk_perif_prs_rt foreign key (oid_presa_rete) references PRESE_RETE(oid),
	constraint fk_perif_stanze foreign key (oid_stanza) references STANZE(oid) 
);


--Elenco di tutti i PC presenti nella rete. (sottoclasse di PERIFERICHE)
create table PC(
	oid number(10) not null primary key using index tablespace INDX,
	modellopc varchar2(25),
	marcapc varchar2(20),
	tipo char(1) default 'C' not null check(tipo in('C','S')),      --C=Computer, S=Server
	constraint fk_pc$perif foreign key (oid) references PERIFERICHE(oid),
	constraint fk_pc_marche_pc foreign key (marcapc) references MARCHE_PC(marcapc)
);


--Elenco di tutti i Server presenti nella rete. (sottoclasse di PC)
create table SERVER(
	oid number(10) not null primary key using index tablespace INDX,
	constraint fk_server$pc foreign key (oid) references PC(oid)
);


--Elenco di tutte le stampanti di rete a disposizione. (sottoclasse di PERIFERICHE)
create table STAMPANTI(
	oid number(10) not null primary key using index tablespace INDX,
	modellost varchar2(25),
	marcast varchar2(20),
	constraint fk_st$perif foreign key (oid) references PERIFERICHE(oid),
	constraint fk_st_marche_st foreign key (marcast) references MARCHE_ST(marcast)
);





--JOURNAL
--elementary tables
--journal della tabella stati
create table JSTATI as (select * from STATI where 1 = 0);
alter table JSTATI add op char(1) check(op in('I','U','D'));
alter table JSTATI add data_op date default sysdate;

--journal della tabella apparati_tipi
create table JAPPARATI_TIPI as (select * from APPARATI_TIPI where 1 = 0);
alter table JAPPARATI_TIPI add op char(1) check(op in('I','U','D'));
alter table JAPPARATI_TIPI add data_op date default sysdate;

--journal della tabella interconnessioni_tipi
create table JINTERCONNESSIONI_TIPI as (select * from INTERCONNESSIONI_TIPI where 1 = 0);
alter table JINTERCONNESSIONI_TIPI add op char(1) check(op in('I','U','D'));
alter table JINTERCONNESSIONI_TIPI add data_op date default sysdate;

--journal della tabella responsabile_ass
create table JRESPONSABILE_ASS as (select * from RESPONSABILE_ASS where 1 = 0);
alter table JRESPONSABILE_ASS add op char(1) check(op in('I','U','D'));
alter table JRESPONSABILE_ASS add data_op date default sysdate;

--journal della tabella prese_tipi
create table JPRESE_TIPI as (select * from PRESE_TIPI where 1 = 0);
alter table JPRESE_TIPI add op char(1) check(op in('I','U','D'));
alter table JPRESE_TIPI add data_op date default sysdate;

--journal della tabella marche_pc
create table JMARCHE_PC as (select * from MARCHE_PC where 1 = 0);
alter table JMARCHE_PC add op char(1) check(op in('I','U','D'));
alter table JMARCHE_PC add data_op date default sysdate;

--journal della tabella marche_st
create table JMARCHE_ST as (select * from MARCHE_ST where 1 = 0);
alter table JMARCHE_ST add op char(1) check(op in('I','U','D'));
alter table JMARCHE_ST add data_op date default sysdate;

--journal della tabella potenze
create table JPOTENZE as (select * from POTENZE where 1 = 0);
alter table JPOTENZE add op char(1) check(op in('I','U','D'));
alter table JPOTENZE add data_op date default sysdate;

--journal della tabella marche_pc
create table JPORTE_TIPI as (select * from PORTE_TIPI where 1 = 0);
alter table JPORTE_TIPI add op char(1) check(op in('I','U','D'));
alter table JPORTE_TIPI add data_op date default sysdate;


--composed tables
--journal della tabella edifici
create table JEDIFICI as (select * from EDIFICI where 1 = 0);
alter table JEDIFICI add op char(1) check(op in('I','U','D'));
alter table JEDIFICI add data_op date default sysdate;

--journal della tabella piani
create table JPIANI as (select * from PIANI where 1 = 0);
alter table JPIANI add op char(1) check(op in('I','U','D'));
alter table JPIANI add data_op date default sysdate;

--journal della tabella stanze
create table JSTANZE as (select * from STANZE where 1 = 0);
alter table JSTANZE add op char(1) check(op in('I','U','D'));
alter table JSTANZE add data_op date default sysdate;

--journal della tabella dislocazioni
create table JDISLOCAZIONI as (select * from DISLOCAZIONI where 1 = 0);
alter table JDISLOCAZIONI add op char(1) check(op in('I','U','D'));
alter table JDISLOCAZIONI add data_op date default sysdate;

--journal della tabella armadi
create table JARMADI as (select * from ARMADI where 1 = 0);
alter table JARMADI add op char(1) check(op in('I','U','D'));
alter table JARMADI add data_op date default sysdate;

--journal della tabella apparati
create table JAPPARATI as (select * from APPARATI where 1 = 0);
alter table JAPPARATI add op char(1) check(op in('I','U','D'));
alter table JAPPARATI add data_op date default sysdate;

--journal della tabella attivi
create table JATTIVI as (select * from ATTIVI where 1 = 0);
alter table JATTIVI add op char(1) check(op in('I','U','D'));
alter table JATTIVI add data_op date default sysdate;

--journal della tabella passivi
create table JPASSIVI as (select * from PASSIVI where 1 = 0);
alter table JPASSIVI add op char(1) check(op in('I','U','D'));
alter table JPASSIVI add data_op date default sysdate;

--journal della tabella porte
create table JPORTE as (select * from PORTE where 1 = 0);
alter table JPORTE add op char(1) check(op in('I','U','D'));
alter table JPORTE add data_op date default sysdate;

--journal della tabella prese_rete
create table JPRESE_RETE as (select * from PRESE_RETE where 1 = 0);
alter table JPRESE_RETE add op char(1) check(op in('I','U','D'));
alter table JPRESE_RETE add data_op date default sysdate;

--journal della tabella permutazioni
create table JPERMUTAZIONI as (select * from PERMUTAZIONI where 1 = 0);
alter table JPERMUTAZIONI add op char(1) check(op in('I','U','D'));
alter table JPERMUTAZIONI add data_op date default sysdate;

--journal della tabella interconnessioni
create table JINTERCONNESSIONI as (select * from INTERCONNESSIONI where 1 = 0);
alter table JINTERCONNESSIONI add op char(1) check(op in('I','U','D'));
alter table JINTERCONNESSIONI add data_op date default sysdate;

--journal della tabella periferiche
create table JPERIFERICHE as (select * from PERIFERICHE where 1 = 0);
alter table JPERIFERICHE add op char(1) check(op in('I','U','D'));
alter table JPERIFERICHE add data_op date default sysdate;

--journal della tabella pc
create table JPC as (select * from PC where 1 = 0);
alter table JPC add op char(1) check(op in('I','U','D'));
alter table JPC add data_op date default sysdate;

--journal della tabella server
create table JSERVER as (select * from SERVER where 1 = 0);
alter table JSERVER add op char(1) check(op in('I','U','D'));
alter table JSERVER add data_op date default sysdate;

--journal della tabella stampanti
create table JSTAMPANTI as (select * from STAMPANTI where 1 = 0);
alter table JSTAMPANTI add op char(1) check(op in('I','U','D'));
alter table JSTAMPANTI add data_op date default sysdate;





--VIEW
--vista della superclasse dislocazioni
create view V_DISLOCAZIONI as
select d.oid, d.luogo, d.tipo, a.oid_stanza
from dislocazioni d, armadi a
where d.oid = a.oid (+);

--vista della superclasse apparati
create view V_APPARATI as
select app.oid, app.inventario, app.acquistato, app.oid_dislocazione, app.oid_armadio, app.stato, app.tipo, app.funzionamento, att.ip, att.sn, att.pn, att.potenza
from apparati app, attivi att, passivi pas
where app.oid = att.oid (+) and
      app.oid = pas.oid (+);

--vista della superclasse periferiche
create view V_PERIFERICHE as
select per.oid, per.utente, per.ip, per.oid_presa_rete, per.oid_stanza, per.tipo, pc.modellopc, pc.marcapc, sta.modellost, sta.marcast
from periferiche per, pc, stampanti sta
where per.oid = pc.oid (+) and
      per.oid = sta.oid (+);


      
      
 --VARIE     
 --collocazione degli armadi nelle stanze piano e oid, nome dell'edificio cui appartengono, anche stanze senza armadi
create or replace view V_COLLOCAZIONI as
select a.oid oid_armadio, s.oid oid_stanza, p.oid oid_piano, p.numero, e.nome edificio, e.oid oid_edificio
from edifici e, piani p, stanze s, armadi a
where (p.oid_edificio = e.oid) and (s.oid_piano = p.oid) and (a.oid_stanza = s.oid);
      
--elenco delle porte libere di un patch panel
create or replace view V_PORTE_LIBERE_PP as
select p.porta, p.tipo, a.oid oid_apparato, a.oid_armadio
from porte p, apparati a
where (a.tipo = 'Patch panel') and (a.stato = 'Funzionante')
	and (a.oid = p.oid_apparato)
	and p.porta not in(select porta_out from permutazioni)
	and p.porta not in(select porta_in from interconnessioni)
	and p.porta not in(select porta_out from interconnessioni)
	and p.porta not in(select etichetta from prese_rete);

