--insert.sql
 -- Basi di dati e sistemi informativi 2
 -- Progetto Lan/Wan, A.A. 2004/2005
 -- Gruppo: g013
 -- Studente: Piero Dalle Pezze
 -- Matricola 486228-sin
 -- Contents: script SQL dei comandi DML per la popolazione del database.


--stati
insert into STATI(stato) values ('Funzionante');
insert into STATI(stato) values ('Spento');
insert into STATI(stato) values ('Guasto');
insert into STATI(stato) values ('In riparazione');
insert into STATI(stato) values ('In collaudo');


--apparati_tipi
insert into APPARATI_TIPI(tipo) values ('Hub');
insert into APPARATI_TIPI(tipo) values ('Switch');
insert into APPARATI_TIPI(tipo) values ('Gruppi di continuità');
insert into APPARATI_TIPI(tipo) values ('Router');
insert into APPARATI_TIPI(tipo) values ('Patch panel');


--interconnessioni_tipi
insert into INTERCONNESSIONI_TIPI(tipo) values ('Fibra ottica');
insert into INTERCONNESSIONI_TIPI(tipo) values ('Doppino');
insert into INTERCONNESSIONI_TIPI(tipo) values ('Cavo coassiale');
insert into INTERCONNESSIONI_TIPI(tipo) values ('Fibra');
insert into INTERCONNESSIONI_TIPI(tipo) values ('Cavo rame');
insert into INTERCONNESSIONI_TIPI(tipo) values ('Wireless');


--responsabile_ass
insert into RESPONSABILE_ASS(nome) values ('Telecom');
insert into RESPONSABILE_ASS(nome) values ('Infostrada');
insert into RESPONSABILE_ASS(nome) values ('Wind');
insert into RESPONSABILE_ASS(nome) values ('In proprio');


--prese_tipi
insert into PRESE_TIPI(tipo) values ('RJ11');
insert into PRESE_TIPI(tipo) values ('RJ45');
insert into PRESE_TIPI(tipo) values ('BNC');
insert into PRESE_TIPI(tipo) values ('SC fibra');

--marche_pc
insert into MARCHE_PC(marcapc) values ('Hewlett Packard');
insert into MARCHE_PC(marcapc) values ('EuroTEK PC');
insert into MARCHE_PC(marcapc) values ('Acer');
insert into MARCHE_PC(marcapc) values ('Asus');
insert into MARCHE_PC(marcapc) values ('Enermax');
insert into MARCHE_PC(marcapc) values ('X1');
insert into MARCHE_PC(marcapc) values ('IBM');
insert into MARCHE_PC(marcapc) values ('Apple');
insert into MARCHE_PC(marcapc) values ('Foxconn');
insert into MARCHE_PC(marcapc) values ('Ecs Elite Group');
insert into MARCHE_PC(marcapc) values ('Microstar');
insert into MARCHE_PC(marcapc) values ('Nevada');
insert into MARCHE_PC(marcapc) values ('Toshiba');
insert into MARCHE_PC(marcapc) values ('Compaq');
insert into MARCHE_PC(marcapc) values ('Olivetti');
insert into MARCHE_PC(marcapc) values ('Samsung');


--marche_st
insert into MARCHE_ST(marcast) values ('Canon');
insert into MARCHE_ST(marcast) values ('Agfa');
insert into MARCHE_ST(marcast) values ('Apple');
insert into MARCHE_ST(marcast) values ('Digital');
insert into MARCHE_ST(marcast) values ('Epson');
insert into MARCHE_ST(marcast) values ('Compaq');
insert into MARCHE_ST(marcast) values ('Fujitsu');
insert into MARCHE_ST(marcast) values ('Fuji Xerox');
insert into MARCHE_ST(marcast) values ('Hewlett Packard');
insert into MARCHE_ST(marcast) values ('IBM');
insert into MARCHE_ST(marcast) values ('Microtek');
insert into MARCHE_ST(marcast) values ('Olivetti');
insert into MARCHE_ST(marcast) values ('Oce');
insert into MARCHE_ST(marcast) values ('Oki');
insert into MARCHE_ST(marcast) values ('NRG');
insert into MARCHE_ST(marcast) values ('Panasonic');
insert into MARCHE_ST(marcast) values ('Samsung');
insert into MARCHE_ST(marcast) values ('Ricoh');
insert into MARCHE_ST(marcast) values ('Royal');
insert into MARCHE_ST(marcast) values ('Schlumberger');
insert into MARCHE_ST(marcast) values ('Scitex');
insert into MARCHE_ST(marcast) values ('Star');
insert into MARCHE_ST(marcast) values ('Tegra');
insert into MARCHE_ST(marcast) values ('Toshiba');
insert into MARCHE_ST(marcast) values ('Texas Instruments');
insert into MARCHE_ST(marcast) values ('Xerox');


--potenze
insert into POTENZE(potenza) values ('100 Watt');
insert into POTENZE(potenza) values ('125 Watt');
insert into POTENZE(potenza) values ('150 Watt');
insert into POTENZE(potenza) values ('175 Watt');
insert into POTENZE(potenza) values ('200 Watt');
insert into POTENZE(potenza) values ('225 Watt');
insert into POTENZE(potenza) values ('250 Watt');
insert into POTENZE(potenza) values ('275 Watt');
insert into POTENZE(potenza) values ('300 Watt');
insert into POTENZE(potenza) values ('325 Watt');
insert into POTENZE(potenza) values ('350 Watt');
insert into POTENZE(potenza) values ('375 Watt');
insert into POTENZE(potenza) values ('400 Watt');
insert into POTENZE(potenza) values ('425 Watt');
insert into POTENZE(potenza) values ('450 Watt');
insert into POTENZE(potenza) values ('475 Watt');
insert into POTENZE(potenza) values ('500 Watt');
insert into POTENZE(potenza) values ('525 Watt');
insert into POTENZE(potenza) values ('550 Watt');
insert into POTENZE(potenza) values ('575 Watt');
insert into POTENZE(potenza) values ('600 Watt');


--porte_tipi
insert into PORTE_TIPI(tipo) values ('IR/RS232');
insert into PORTE_TIPI(tipo) values ('RS422');
insert into PORTE_TIPI(tipo) values ('RS232');
insert into PORTE_TIPI(tipo) values ('RS485');
insert into PORTE_TIPI(tipo) values ('10/100');
insert into PORTE_TIPI(tipo) values ('GBIC');
insert into PORTE_TIPI(tipo) values ('10BaseT');
insert into PORTE_TIPI(tipo) values ('100BaseT');
insert into PORTE_TIPI(tipo) values ('100BaseTX');
insert into PORTE_TIPI(tipo) values ('100BaseFX');
insert into PORTE_TIPI(tipo) values ('1000BaseT');


--edifici
insert into EDIFICI(oid, nome, indirizzo) values (null, 'Crystal Palace', 'via vittoria 34 Nuvolera Brescia');
insert into EDIFICI(oid, nome, indirizzo) values (null, 'Coriolano', 'via Bonifacio VIII Milano');
insert into EDIFICI(oid, nome, indirizzo) values (null, 'Pirellone', 'via Santa Croce 3 Milano');
insert into EDIFICI(oid, nome, indirizzo) values (null, 'Majestic', 'via Altinate 53 Napoli');
insert into EDIFICI(oid, nome, indirizzo) values (null, 'Holiday', 'viale Mazzini 97 Como');
insert into EDIFICI(oid, nome, indirizzo) values (null, 'CaterPillar', 'via Leone X 32 Roma');
insert into EDIFICI(oid, nome, indirizzo) values (null, 'Morpheus', 'via Gregorio VII 3 ');
insert into EDIFICI(oid, nome, indirizzo) values (null, 'Digitex', 'via Largo Augusto 43 Bologna');
insert into EDIFICI(oid, nome, indirizzo) values (null, 'JPlanet', 'via Sabbioni 32 Marghera');


--piani
insert into PIANI(oid, numero, oid_edificio) values (null, 0, 1);
insert into PIANI(oid, numero, oid_edificio) values (null, 1, 1);
insert into PIANI(oid, numero, oid_edificio) values (null, 2, 1);
insert into PIANI(oid, numero, oid_edificio) values (null, 3, 1);
insert into PIANI(oid, numero, oid_edificio) values (null, 4, 1);
insert into PIANI(oid, numero, oid_edificio) values (null, 5, 1);
insert into PIANI(oid, numero, oid_edificio) values (null, 6, 1);
insert into PIANI(oid, numero, oid_edificio) values (null, 7, 1);
insert into PIANI(oid, numero, oid_edificio) values (null, 8, 1);
insert into PIANI(oid, numero, oid_edificio) values (null, 9, 1);
insert into PIANI(oid, numero, oid_edificio) values (null, 10, 1);
insert into PIANI(oid, numero, oid_edificio) values (null, 0, 8);
insert into PIANI(oid, numero, oid_edificio) values (null, 1, 8);
insert into PIANI(oid, numero, oid_edificio) values (null, 2, 8);
insert into PIANI(oid, numero, oid_edificio) values (null, 3, 8);
insert into PIANI(oid, numero, oid_edificio) values (null, 4, 8);
insert into PIANI(oid, numero, oid_edificio) values (null, 5, 8);
insert into PIANI(oid, numero, oid_edificio) values (null, 0, 5);
insert into PIANI(oid, numero, oid_edificio) values (null, 1, 5);
insert into PIANI(oid, numero, oid_edificio) values (null, 2, 5);
insert into PIANI(oid, numero, oid_edificio) values (null, 0, 7);
insert into PIANI(oid, numero, oid_edificio) values (null, 1, 7);
insert into PIANI(oid, numero, oid_edificio) values (null, 0, 4);
insert into PIANI(oid, numero, oid_edificio) values (null, 1, 4);
insert into PIANI(oid, numero, oid_edificio) values (null, 2, 4);
insert into PIANI(oid, numero, oid_edificio) values (null, 3, 4);
insert into PIANI(oid, numero, oid_edificio) values (null, 0, 9);
insert into PIANI(oid, numero, oid_edificio) values (null, 1, 9);
insert into PIANI(oid, numero, oid_edificio) values (null, 2, 9);
insert into PIANI(oid, numero, oid_edificio) values (null, 3, 9);
insert into PIANI(oid, numero, oid_edificio) values (null, 4, 9);
insert into PIANI(oid, numero, oid_edificio) values (null, 0, 3);
insert into PIANI(oid, numero, oid_edificio) values (null, 1, 3);
insert into PIANI(oid, numero, oid_edificio) values (null, 2, 3);


--stanze
  --ed. crystal palace
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 1, 4352567, 'Parete est, 2 finestre, 1 porta,	due piante, pavimentazione in palchè, 2 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 1, 4352568, 'Parete ovest, 2 finestre, 1 porta blindata,	, pavimentazione in palchè, 2 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 1, 4352569, 'Parete nord, 2 finestre, 1 porta, pavimentazione in palchè, 2 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 1, 4352570, 'Parete sud, 2 finestre, 1 porta, pavimentazione in palchè, 2 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 2, 4352571, 'Parete est, 2 finestre, 2 porta di cui una blindata, pavimentazione in palchè, 5 prese di rete, 1 armadio tecnologico');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 2, 4352572, 'Parete ovest, 2 finestre, 1 porta, 5 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 2, 4352573, 'Parete Nord, 2 finestre, 1 porta, 5 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 2, 4352574, 'Parete sud, 2 finestre, 1 porta, 5 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 3, 4352575, 'Parete est, 2 finestre, 2 porta, 10 prese di rete, 1 armadio tecnologico');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 3, 4352576, 'Parete ovest, 2 finestre, 1 porta, 10 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 3, 4352577, 'Parete nord, 2 finestre, 1 porta, 10 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 3, 4352578, 'Parete sud, 2 finestre, 1 porta, 10 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 4, 4352579, 'Parete est, 2 finestre, 1 porta, 2 prese di rete, 1 armadio tecnologico');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 4, 4352580, 'Parete ovest, 2 finestre, 1 porta, 2 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 4, 4352581, 'Parete nord, 2 finestre, 1 porta, 2 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 4, 4352582, 'Parete sud, 2 finestre, 1 porta, 2 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 5, 4352583, 'Parete ovest, 2 finestre, 1 porta blindata, 1 presa di rete, 1 armadio tecnologico');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 6, 4352584, 'Parete ovest, 2 finestre, 1 porta blindata');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 7, 4352585, 'Parete ovest, 2 finestre, 1 porta, inutilizzato');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 8, 4352586, 'Parete ovest, 2 finestre, 1 porta, inutilizzato');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 9, 4352587, 'Parete ovest, 2 finestre, 1 porta, inutilizzato');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 10, 4352588, 'Parete ovest, 2 finestre, 1 porta, inutilizzato');

insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 11, 39876, 'Parete ovest, 2 finestre, 1 porta blindata, 10 prese di rete, 1 armadio tecnologico');
  --ed. digitex
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 12, 39877, '3 finestre, 10 prese di rete, 1 armadio tecnologico');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 13, 39878, '3 finestre, 10 prese di rete, 1 armadio tecnologico');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 14, 39879, '3 finestre, 10 prese di rete, 1 armadio tecnologico');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 15, 39880, '3 finestre, 10 prese di rete, 1 armadio tecnologico');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 16, 39881, '3 finestre, 10 prese di rete, 1 armadio tecnologico');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 17, 9929, '1 finestra, 5 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 17, 9930, '1 finestra, 5 prese di rete');
  --ed. holiday
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 18, 1001, '1 finestra, 5 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 19, 1002, '1 finestra, 5 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 20, 1006, '1 finestra, 5 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 20, 1007, '1 finestra, 5 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 20, 1008, '1 finestra, 5 prese di rete');
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 20, 1009, '1 finestra, 5 prese di rete');
  --ed. morpheus
insert into STANZE(oid, oid_piano, telefono, descrizione) values (null, 21, null, '1 finestra, 5 prese di rete');


--v_dislocazioni
--da 4 al 22 crystal palace
--da 23 al 27 Digitex
--28 morpheus
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Magazzino', 'D', null);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Riparazione', 'D', null);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'In prestito', 'D', null);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Armadio', 'A', 1);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Armadio', 'A', 5);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Armadio', 'A', 9);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Armadio', 'A', 13);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Armadio', 'A', 17);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Armadio', 'A', 18);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Armadio', 'A', 23);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Armadio', 'A', 24);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Armadio', 'A', 25);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Armadio', 'A', 26);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Armadio', 'A', 27);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Armadio', 'A', 28);
insert into V_DISLOCAZIONI(oid, luogo, tipo, oid_stanza) values (null, 'Armadio', 'A', 37);


--v_apparati
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 2, to_date('01/05/2005', 'DD/MM/YYYY'), 4, 4, 'Funzionante', 'Switch', 'A', '192.168.9.32', 2364578, 2645827, '500 Watt'); 
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 1, to_date('30/03/2005', 'DD/MM/YYYY'), 2, null, 'Guasto', 'Switch', 'A', null, 5435354, 453552, '500 Watt');
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 3, to_date('02/05/2005', 'DD/MM/YYYY'), 4, 4, 'Funzionante', 'Patch panel', 'P', null, null, null, null);
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 4, to_date('02/05/2005', 'DD/MM/YYYY'), 5, 5, 'Funzionante', 'Patch panel', 'P', null, null, null, null);
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 5, to_date('02/05/2005', 'DD/MM/YYYY'), 5, 5, 'Funzionante', 'Switch', 'A', '192.168.9.33', 352151, 74466, '450 Watt');
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 6, to_date('03/05/2005', 'DD/MM/YYYY'), 6, 6, 'Funzionante', 'Switch', 'A', '192.168.9.34', 42427272, 74675675, '350 Watt');
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 7, to_date('02/05/2005', 'DD/MM/YYYY'), 6, 6, 'Funzionante', 'Patch panel', 'P', null, null, null, null);
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 8, to_date('07/05/2005', 'DD/MM/YYYY'), 7, 7, 'Funzionante', 'Switch', 'A', '192.168.9.35', 636261, 8764475, '500 Watt');
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 9, to_date('07/05/2005', 'DD/MM/YYYY'), 7, 7, 'Funzionante', 'Patch panel', 'P', null, null, null, null);
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 10, to_date('02/04/2005', 'DD/MM/YYYY'), 8, 8, 'Funzionante', 'Patch panel', 'P', null, null, null, null);
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 11, to_date('07/01/2005', 'DD/MM/YYYY'), 8, 8, 'Funzionante', 'Switch', 'A', '192.168.9.36', 35364151, 756756, '450 Watt');
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 12, to_date('13/02/2005', 'DD/MM/YYYY'), 9, 9, 'Funzionante', 'Switch', 'A', '192.168.9.37', 4668452, 70897675, '350 Watt');
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 13, to_date('10/03/2005', 'DD/MM/YYYY'), 9, 9, 'Funzionante', 'Patch panel', 'P', null, null, null, null);
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 14, to_date('13/03/2005', 'DD/MM/YYYY'), 9, 9, 'Funzionante', 'Switch', 'A', '192.168.9.38', 6368751, 87864475, '500 Watt');
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 15, to_date('22/09/2004', 'DD/MM/YYYY'), 10, 10, 'Funzionante', 'Patch panel', 'P', null, null, null, null);
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 16, to_date('18/11/2004', 'DD/MM/YYYY'), 10, 10, 'Funzionante', 'Switch', 'A', '192.168.9.39', 5462245, 78787546, '450 Watt');
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 17, to_date('22/09/2004', 'DD/MM/YYYY'), 12, 12, 'Funzionante', 'Patch panel', 'P', null, null, null, null);
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 18, to_date('18/11/2004', 'DD/MM/YYYY'), 12, 12, 'Funzionante', 'Switch', 'A', '192.168.9.40', 77896987, 8774466, '450 Watt');
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 19, to_date('19/12/2004', 'DD/MM/YYYY'), 13, 13, 'Funzionante', 'Switch', 'A', '192.168.9.41', 42999272, 74653275, '350 Watt');
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 20, to_date('20/10/2004', 'DD/MM/YYYY'), 13, 13, 'Funzionante', 'Patch panel', 'P', null, null, null, null);
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 21, to_date('15/01/2005', 'DD/MM/YYYY'), 14, 14, 'Funzionante', 'Switch', 'A', '192.168.9.42', 2895547, 42578765, '500 Watt');
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 22, to_date('07/01/2005', 'DD/MM/YYYY'), 14, 14, 'Funzionante', 'Patch panel', 'P', null, null, null, null);
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 23, to_date('15/01/2005', 'DD/MM/YYYY'), 16, 16, 'Funzionante', 'Switch', 'A', '192.168.9.43', 9875561, 8987575, '500 Watt');
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 24, to_date('07/01/2005', 'DD/MM/YYYY'), 16, 16, 'Funzionante', 'Patch panel', 'P', null, null, null, null);
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 25, to_date('03/05/2005', 'DD/MM/YYYY'), 1, null, 'Funzionante', 'Switch', 'A', '192.168.9.44', 212028, 45110146, '350 Watt');
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 26, to_date('05/05/2005', 'DD/MM/YYYY'), 3, null, 'Funzionante', 'Patch panel', 'P', null, null, null, null);
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 27, to_date('09/10/2004', 'DD/MM/YYYY'), 4, 4, 'Guasto', 'Patch panel', 'P', null, null, null, null);
insert into V_APPARATI(oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) values (null, 28, to_date('16/11/2005', 'DD/MM/YYYY'), 5, 5, 'Guasto', 'Patch panel', 'P', null, null, null, null);

--porte
  --switch
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 1);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 1);
  --apparato2 guasto switch
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 2);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 2);
  --patch panel
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 3);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 3);
  --patch panel
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 4); 
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 4);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 4);
  --switch
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 5);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 5);
  --switch
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 6);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 6);
  --patch panel
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 7);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 7);
  --switch
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 8);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 8);
  --patch panel
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 9);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 9);
  --patch panel
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 10);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 10);
  --switch
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 11);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 11);
  --switch
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 12);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 12);
  --patch panel
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 13);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 13);
  --switch
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 14);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 14);
  --patch panel
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 15);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 15);
  --switch
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 16);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 16);
  --patch panel
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 17);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 17);
  --switch
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 18);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 18);
  --switch
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 19);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 19);
  --patch panel
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 20);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 20);
  --switch
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 21);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 21);
  --patch panel
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 22);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 22);
  --switch
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 23);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 23);
  --patch panel
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS232', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, '10/100', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 24);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 24);
  --patch panel
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 27);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 27);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 27);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 27);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 27);
  --patch panel
insert into PORTE(porta, tipo, oid_apparato) values (null, 'GBIC', 28);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 28);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS422', 28);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 28);
insert into PORTE(porta, tipo, oid_apparato) values (null, 'RS485', 28);


--permutazioni
--sw 1 a pp 3 (armadio 4)
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 1, 41);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 2, 42);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 3, 43);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 4, 44);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 5, 45);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 6, 46);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 7, 47);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 8, 48);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 9, 49);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 10, 50);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 11, 51);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 12, 52);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 13, 53);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 14, 54);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 15, 55);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 16, 56);
--da sw 5 a pp 4 (armadio 5)
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 103, 81);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 104, 82);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 105, 83);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('10/05/2005','DD/MM/YYYY'), 106, 84);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/06/2005','DD/MM/YYYY'), 107, 91);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/06/2005','DD/MM/YYYY'), 108, 92);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/07/2005','DD/MM/YYYY'), 109, 93);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/08/2005','DD/MM/YYYY'), 110, 94);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/02/2005','DD/MM/YYYY'), 111, 95);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/02/2005','DD/MM/YYYY'), 112, 96);
--da sw 6 a pp 7  (armadio 6)
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 120, 171);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('13/05/2005','DD/MM/YYYY'), 121, 172);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 122, 173);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 123, 147);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('13/05/2005','DD/MM/YYYY'), 124, 148);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('23/12/2005','DD/MM/YYYY'), 125, 149);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/11/2005','DD/MM/YYYY'), 126, 150);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 127, 151);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('10/05/2005','DD/MM/YYYY'), 128, 152);
--da sw 8 a pp 9 (armadio 7)
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 175, 191);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 176, 192);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 177, 193);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 178, 194);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 179, 201);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 180, 202);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 181, 203);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 182, 204);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 183, 205);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 184, 206);
--da sw 11 a pp 10  (armadio 8)
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 235, 219);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 236, 220);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 237, 221);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 238, 222);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 239, 223);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 240, 224);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 241, 225);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 242, 226);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 243, 227);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 244, 228);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 245, 229);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 246, 230);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 247, 231);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 248, 232);
--da sw 12 a pp 13 (armadio 9)
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 249, 265);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 250, 266);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 251, 267);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 252, 268);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 259, 269);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 260, 270);
--da sw 12 a sw 14
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 253, 275);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 254, 276);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 255, 277);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 256, 278);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 257, 279);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 258, 280);
--da sw 14 a pp 13
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 291, 281);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 292, 282);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 293, 283);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('13/05/2005','DD/MM/YYYY'), 294, 284);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/09/2005','DD/MM/YYYY'), 295, 285);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/10/2005','DD/MM/YYYY'), 296, 286);
--da sw 16 a pp 15 (armadio 10)
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/12/2005','DD/MM/YYYY'), 329, 313);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 330, 314);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 331, 315);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 332, 316);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 333, 317);
--da sw 18 a pp 17 (armadio 12)
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 367, 351);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 368, 352);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/12/2005','DD/MM/YYYY'), 369, 353);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 370, 354);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 371, 355);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 372, 356);
--da sw 19 a pp 20 (armadio 13)
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 379, 395);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 380, 396);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 381, 397);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 382, 398);
--da sw 21 a pp 22 (armadio 14)
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 417, 433);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 418, 434);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 419, 435);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 420, 436);
--da sw 23 a pp 24 (armadio 16)
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 455, 471);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 456, 472);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 457, 473);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 458, 474);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 469, 479);
insert into PERMUTAZIONI(oid, data, porta_in, porta_out) values (null, to_date('03/05/2005','DD/MM/YYYY'), 470, 480);


--interconnessioni
--da pp 3 a pp 4
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('06/02/2005','DD/MM/YYYY'), 65, 85, 'Fibra ottica', 'In proprio');
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('07/03/2005','DD/MM/YYYY'), 66, 86, 'Fibra ottica', 'In proprio');
--da pp 4 a pp 7
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('08/05/2005','DD/MM/YYYY'), 101, 153, 'Fibra ottica', 'In proprio');
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('23/05/2005','DD/MM/YYYY'), 102, 154, 'Fibra ottica', 'In proprio');
--da pp 7 a pp 9
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('03/07/2005','DD/MM/YYYY'), 169, 195, 'Fibra ottica', 'In proprio');
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('13/08/2005','DD/MM/YYYY'), 170, 196, 'Fibra ottica', 'In proprio');
--da pp 9 a pp 10
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('03/09/2005','DD/MM/YYYY'), 195, 215, 'Fibra ottica', 'In proprio');
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('03/10/2005','DD/MM/YYYY'), 196, 216, 'Fibra ottica', 'In proprio');
--da pp 10 a pp 13 
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('03/11/2005','DD/MM/YYYY'), 217, 271, 'Fibra ottica', 'In proprio');
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('03/05/2005','DD/MM/YYYY'), 218, 272, 'Fibra ottica', 'In proprio');
--da pp 13 a pp 15 
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('03/05/2005','DD/MM/YYYY'), 271, 309, 'Fibra ottica', 'In proprio');
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('03/05/2005','DD/MM/YYYY'), 272, 310, 'Fibra ottica', 'In proprio');
--da pp 17 a pp 20 
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('03/01/2004','DD/MM/YYYY'), 349, 403, 'Doppino', 'Infostrada');
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('03/05/2004','DD/MM/YYYY'), 350, 404, 'Doppino', 'Infostrada');
--da pp 20 a pp 22 
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('03/08/2003','DD/MM/YYYY'), 405, 443, 'Doppino', 'Infostrada');
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('03/08/2004','DD/MM/YYYY'), 406, 444, 'Doppino', 'Infostrada');
--da pp 27 a pp 28 (patch panel guasti) --> linee guaste
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('03/08/2003','DD/MM/YYYY'), 495, 500, 'Fibra ottica', 'Telecom');
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('03/06/2004','DD/MM/YYYY'), 497, 502, 'Doppino', 'Infostrada');
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('05/08/2003','DD/MM/YYYY'), 498, 503, 'Fibra ottica', 'Telecom');
insert into INTERCONNESSIONI(oid, data, porta_in, porta_out, tipo, nome) values (null, to_date('14/03/2004','DD/MM/YYYY'), 499, 504, 'Cavo coassiale', 'Telecom');


--prese_rete
 --pp 3
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 57, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 58, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 59, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 60, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 61, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 62, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 63, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 64, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 65, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 66, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 67, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 68, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 69, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 70, 'RJ45');
 --pp 4
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 87, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 88, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 97, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 98, 'RJ11');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 99, 'RJ11');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 100, 'RJ11');
 --pp 7
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 135, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 136, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 137, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 138, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 139, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 140, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 141, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 142, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 143, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 144, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 145, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 146, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 155, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 156, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 159, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 160, 'RJ45');
 --pp 9
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 197, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 198, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 199, 'BNC');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 200, 'BNC');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 207, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 208, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 209, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 210, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 211, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 212, 'RJ45');
 --pp 10
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 213, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 214, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 217, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 218, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 233, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 234, 'RJ45');
 --pp 13
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 273, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 274, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 287, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 288, 'RJ45');
 --pp 15
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 307, 'BNC');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 308, 'BNC');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 311, 'RJ11');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 312, 'RJ11');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 318, 'RJ11');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 319, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 320, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 321, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 322, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 323, 'RJ45');
 --pp 17
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 343, 'BNC');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 344, 'BNC');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 345, 'BNC');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 346, 'BNC');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 347, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 348, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 349, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 350, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 357, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 358, 'RJ45');
 --pp 20
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 401, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 402, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 405, 'BNC');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 406, 'BNC');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 407, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 408, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 409, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 410, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 411, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 412, 'RJ45');
 --pp 22
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 450, 'RJ45'); 
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 451, 'RJ45'); 
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 452, 'RJ45'); 
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 453, 'RJ45'); 
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 454, 'RJ45'); 
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 455, 'RJ45'); 
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 456, 'RJ45'); 
 --pp 24
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 488, 'RJ45');
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 489, 'RJ45'); 
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 490, 'RJ45'); 
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 491, 'RJ45'); 
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 492, 'RJ45'); 
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 493, 'RJ45'); 
insert into PRESE_RETE(oid, etichetta, tipo) values (null, 494, 'RJ45');  


--v_periferiche
 --connessi al pp 3 (Crystal Palace)
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.45', 1, 1, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.46', 2, 1, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.47', 3, 1, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.48', 4, 1, 'P', null , null , 'FFR699', 'Fujitsu');
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.49', 5, 2, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.50', 6, 2, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.51', 7, 2, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.52', 8, 2, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.53', 9, 3, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.54', 10, 3, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.55', 11, 3, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.56', 12, 4, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.57', 13, 4, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.58', 14, 4, 'S', 'ML110G2', 'Hewlett Packard', null , null);
 --connessi al pp 4
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.59', 15, 5, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.60', 16, 5, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.61', 17, 6, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.62', 18, 7, 'C', 'IMAC G5', 'Apple', null , null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.63', 19, 8, 'S', 'TS ESERVER X226', 'IBM', null, null);
 --connessi al pp 7
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.64', 21, 9, 'C', 'TERMINATOR BB K7', 'Asus', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.65', 22, 9, 'C', 'TERMINATOR BB K7', 'Asus', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.66', 23, 9, 'P', null , null , 'FFR699', 'Fujitsu');
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.67', 24, 10, 'C', 'VERITON 7600GT P4', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.68', 25, 10, 'C', 'VERITON 7600GT P4', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.69', 26, 10, 'C', 'VERITON 7600GT P4', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.70', 27, 11, 'C', 'VERITON 7600GT P4', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.71', 28, 11, 'C', 'VERITON 7600GT P4', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.72', 29, 12, 'S', 'ML110G2', 'Hewlett Packard', null , null);
 --connessi al pp 9
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.73', 37, 13, 'C', 'TERMINATOR BB K7', 'Asus', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.74', 38, 13, 'C', 'TERMINATOR BB K7', 'Asus', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.75', 39, 14, 'P', null , null , 'FFR700', 'Xerox');
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.76', 40, 14, 'C', 'VERITON 7600GT P4', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.77', 41, 15, 'S', 'ML110G2', 'Hewlett Packard', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.78', 42, 16, 'C', 'VERITON 7600GT P4', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.79', 43, 16, 'C', 'VERITON 7600GT P4', 'Acer', null, null);
 --connessi al pp 10
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.80', 47, 17, 'C', 'IMAC G5', 'Apple', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.81', 48, 17, 'C', 'IMAC G5', 'Apple', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.82', 49, 17, 'P', null , null , 'K6R699', 'Scitex');
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.83', 50, 17, 'C', 'IMAC G5', 'Apple', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.84', 51, 17, 'S', 'ML110G2', 'Hewlett Packard', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.85', 52, 17, 'C', 'IMAC G5', 'Apple', null, null);
 --connessi al pp 13
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.86', 53, 18, 'C', 'IMAC G5', 'Apple', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.87', 54, 18, 'P', null , null , 'JKF103', 'Oki');
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.88', 55, 18, 'S', 'ML110G2', 'Hewlett Packard', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.89', 56, 18, 'C', 'IMAC G5', 'Apple', null, null);
 --connessi al pp 15
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.90', 57, 23, 'C', 'IMAC G5', 'Apple', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.91', 58, 23, 'P', null , null , 'HTC 3600', 'Schlumberger');
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.92', 59, 23, 'C', 'IMAC G5', 'Apple', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.93', 60, 23, 'C', 'IMAC G5', 'Apple', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.94', 61, 23, 'C', 'IMAC G5', 'Apple', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.95', 62, 23, 'C', 'IMAC G5', 'Apple', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.96', 63, 23, 'S', 'ML110G2', 'Hewlett Packard', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.97', 64, 23, 'C', 'IMAC G5', 'Apple', null, null);
 --connessi al pp 17 (Digitex)
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.98', 67, 25, 'C', 'CUBE MSI MEGA PC651', 'Microstar', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.99', 68, 25, 'P', null , null , 'HTR699', 'Fujitsu');
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.100', 69, 25, 'C', 'CUBE MSI MEGA PC651', 'Microstar', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.101', 70, 25, 'C', 'CUBE MSI MEGA PC651', 'Microstar', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.102', 71, 25, 'C', 'CUBE MSI MEGA PC651', 'Microstar', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.103', 72, 25, 'C', 'CUBE MSI MEGA PC651', 'Microstar', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.104', 73, 25, 'S', 'ML110G2', 'Hewlett Packard', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.105', 74, 25, 'C', 'CUBE MSI MEGA PC651', 'Microstar', null, null);
 --connessi al pp 20
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.106', 77, 26, 'C', 'PC ACER POWER F1 PIV', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.107', 78, 26, 'P', null , null , 'Bomber 66', 'Royal');
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.108', 79, 26, 'C', 'PC ACER POWER F1 PIV', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.109', 80, 26, 'C', 'PC ACER POWER F1 PIV', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.110', 81, 26, 'C', 'PC ACER POWER F1 PIV', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.111', 82, 26, 'C', 'PC ACER POWER F1 PIV', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.112', 83, 26, 'S', 'ML110G2', 'Hewlett Packard', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.113', 84, 26, 'C', 'PC ACER POWER F1 PIV', 'Acer', null, null);
 --connessi al pp 22
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.114', 87, 27, 'C', 'PC ACER POWER F1 PIV', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.115', 88, 27, 'P', null , null , 'EvenCraft 234', 'Toshiba');
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.116', 89, 27, 'C', 'PC ACER POWER F1 PIV', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.117', 90, 27, 'C', 'PC ACER POWER F1 PIV', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.118', 91, 27, 'C', 'PC ACER POWER F1 PIV', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.119', 92, 27, 'C', 'PC ACER POWER F1 PIV', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.120', 93, 27, 'S', 'ML110G2', 'Hewlett Packard', null, null);
 --connessi al pp 22 (Morpheus)
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.121', 94, 37, 'C', 'PC ACER ASPIRE T350', 'Acer', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.122', 95, 37, 'P', null , null , 'FFR909', 'Fujitsu');
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.123', 96, 37, 'C', 'WORKSTATION HP XW4200', 'Hewlett Packard', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.124', 97, 37, 'C', 'PC LDR7340-3,4', 'EuroTEK PC', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Programmatore', '192.168.9.125', 98, 37, 'C', 'PC LDR7340-3,4', 'EuroTEK PC', null, null);
insert into V_PERIFERICHE(oid, utente, ip, oid_presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) values (null, 'Amministratore', '192.168.9.126', 99, 37, 'S', 'PROLIANT ML350 G3', 'Hewlett Packard', null, null);
