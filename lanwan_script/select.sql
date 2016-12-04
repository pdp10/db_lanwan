--select.sql
 -- Basi di dati e sistemi informativi 2
 -- Progetto Lan/Wan, A.A. 2004/2005
 -- Gruppo: g013
 -- Studente: Piero Dalle Pezze
 -- Matricola 486228-sin
 -- Contents: script SQL dei comandi select

--id stanze inserite con oid, numero del piano e oid, nome dell'edificio cui appartengono
select s.oid oid_stanza, p.oid oid_piano, p.numero, e.nome edificio, e.oid oid_edificio
from edifici e, piani p, stanze s
where (p.oid_edificio = e.oid) and (s.oid_piano = p.oid);

--elenco delle porte con il tipo di apparato cui appartengono presenti in uno specifico armadio
select p.porta, p.tipo, a.oid oid_apparato, a.tipo, a.oid_armadio
from porte p, apparati a
where (a.oid = p.oid_apparato) and (a.oid_armadio = 16);

--elenco di tutti gli apparati con la stanza, il piano e l'edificio cui appartengono
select a.tipo, V.oid_armadio, V.oid_stanza, V.numero, V.edificio
from apparati a, V_COLLOCAZIONI V
where V.oid_armadio (+)= a.oid_armadio;

--funzione B6
--numero e tipo linee attive con filtro operatore
select count(*) linee_attive, I.tipo
from INTERCONNESSIONI I
where I.nome = 'Telecom'
group by I.tipo;

--linea con tempo guasto massimo
select I.oid, to_char(I.data, 'DD Month YYYY'), I.porta_in, I.porta_out, I.tipo, I.nome
from INTERCONNESSIONI I, PORTE P, APPARATI A
where (A.stato = 'Guasto') and (I.data <= ALL (
			select I.data from INTERCONNESSIONI I)) and 
     (P.oid_apparato = A.oid) and 
     (P.porta = I.porta_in); 
