--drop.sql
 -- Basi di dati e sistemi informativi 2
 -- Progetto Lan/Wan, A.A. 2004/2005
 -- Gruppo: g013
 -- Studente: Piero Dalle Pezze
 -- Matricola 486228-sin
 -- Contents: script SQL dei comandi DDL per la rimozione dello schema, sequence etc



--TABLE
--composed table
drop table PERMUTAZIONI;
drop table INTERCONNESSIONI;
drop table SERVER;
drop table PC;
drop table STAMPANTI;
drop table PERIFERICHE;
drop table PRESE_RETE;
drop table PORTE;
drop table ATTIVI;
drop table PASSIVI;
drop table APPARATI;
drop table ARMADI;
drop table DISLOCAZIONI;
drop table STANZE;
drop table PIANI;
drop table EDIFICI;
--elementary table
drop table STATI;                   
drop table APPARATI_TIPI;
drop table INTERCONNESSIONI_TIPI;
drop table RESPONSABILE_ASS;
drop table PRESE_TIPI;
drop table MARCHE_PC;
drop table MARCHE_ST;
drop table POTENZE;
drop table PORTE_TIPI;


--SEQUENCE
drop sequence seq_edifici;
drop sequence seq_piani;
drop sequence seq_stanze;
drop sequence seq_v_dislocazioni;
drop sequence seq_v_apparati;
drop sequence seq_porte;
drop sequence seq_prese_rete;
drop sequence seq_permutazioni;
drop sequence seq_interconnessioni;
drop sequence seq_v_periferiche;


--JOURNAL
drop table JSTATI;
drop table JAPPARATI_TIPI;
drop table JINTERCONNESSIONI_TIPI;
drop table JRESPONSABILE_ASS;
drop table JPRESE_TIPI;
drop table JMARCHE_PC;
drop table JMARCHE_ST;
drop table JPOTENZE;
drop table JPORTE_TIPI;
drop table JPERMUTAZIONI;
drop table JINTERCONNESSIONI;
drop table JSERVER;
drop table JPC;
drop table JSTAMPANTI;
drop table JPERIFERICHE;
drop table JPRESE_RETE;
drop table JPORTE;
drop table JATTIVI;
drop table JPASSIVI;
drop table JAPPARATI;
drop table JARMADI;
drop table JDISLOCAZIONI;
drop table JSTANZE;
drop table JPIANI;
drop table JEDIFICI;


--VIEW
drop view V_DISLOCAZIONI;
drop view V_APPARATI;
drop view V_PERIFERICHE;


--VARIE
drop view V_COLLOCAZIONI;
drop view V_PORTE_LIBERE_PP;
