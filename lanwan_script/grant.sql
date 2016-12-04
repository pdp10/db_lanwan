--grant.sql
 -- Basi di dati e sistemi informativi 2
 -- Progetto Lan/Wan, A.A. 2004/2005
 -- Gruppo: g013
 -- Studente: Piero Dalle Pezze
 -- Matricola 486228-sin
 -- Contents: script SQL per concessione dei grant di select, insert e update all'utente u79




grant select, insert, update, delete on PERMUTAZIONI to u79;
grant select, insert, update, delete on INTERCONNESSIONI to u79;
grant select on SERVER to u79;
grant select on PC to u79;
grant select on STAMPANTI to u79;
grant select on PERIFERICHE to u79;
grant select, insert, update, delete on PRESE_RETE to u79;
grant select, insert, update, delete on PORTE to u79;
grant select on ATTIVI to u79;
grant select on PASSIVI to u79;
grant select on APPARATI to u79;
grant select on ARMADI to u79;
grant select on DISLOCAZIONI to u79;
grant select, insert, update, delete on STANZE to u79;
grant select, insert, update, delete on PIANI to u79;
grant select, insert, update, delete on EDIFICI to u79;
grant select, insert, update, delete on STATI to u79;
grant select, insert, update, delete on APPARATI_TIPI to u79;
grant select, insert, update, delete on INTERCONNESSIONI_TIPI to u79;
grant select, insert, update, delete on RESPONSABILE_ASS to u79;
grant select, insert, update, delete on PRESE_TIPI to u79;
grant select, insert, update, delete on MARCHE_PC to u79;
grant select, insert, update, delete on MARCHE_ST to u79;
grant select, insert, update, delete on POTENZE to u79;
grant select, insert, update, delete on PORTE_TIPI to u79;

grant select, insert, update, delete on V_DISLOCAZIONI to u79;
grant select, insert, update, delete on V_APPARATI to u79;
grant select, insert, update, delete on V_PERIFERICHE to u79;

grant execute on apparato_porta_ins to u79;

grant select, insert, update, delete on UTENTI to u79;
grant select, insert, update, delete on RUOLI to u79;

grant select on V_COLLOCAZIONI to u79;
grant select on V_PORTE_LIBERE_PP to u79;