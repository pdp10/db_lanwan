
// Chiede conferma dell'operazione
function questionYN() {  return confirm('Si vuole veramente procedere alla eliminazione?');  }


// Copia i dati "utente" nella maschera di modifica
function copiaUtenti(f, oid, username, password, nome,  oid_ruolo) {
  f.oid.value = oid;
  f.username.value = unescape(username);
  f.password.value = unescape(password);
  f.nome.value = unescape(nome);
  f.oid_ruolo.value = oid_ruolo;
}

// Copia i dati "ruolo" nella maschera di modifica
function copiaRuoli(f, oid, ruolo) {
  f.oid.value = oid;
  f.ruolo.value = ruolo;
}

// Copia i dati "edificio" nella maschera di modifica
function copiaEdifici(f, oid, nome, indirizzo) {
  f.oid.value = oid;
  f.nome.value = nome;
  f.indirizzo.value = indirizzo;
}

// Copia i dati "piano" nella maschera di modifica
function copiaPiani(f, oid, piano, oid_edificio) {
  f.oid.value = oid;
  f.piano.value = piano;
  f.oid_edificio.value = oid_edificio;
}

// Copia i dati "stanza" nella maschera di modifica
function copiaStanze(f, oid, oid_piano, telefono, descrizione) {
  f.oid.value = oid;
  f.oid_piano.value = oid_piano;
  f.telefono.value = telefono;
  f.descrizione.value = descrizione;
}

// Copia i dati "periferica" nella maschera di modifica
function copiaPeriferiche(f, oid, utente, ip, presa_rete, oid_stanza, tipo, modellopc, marcapc, modellost, marcast) {
  f.oid.value = oid;
  f.utente.value = utente;
  f.ip.value = ip;
  f.presa_rete.value = presa_rete;
  f.oid_stanza.value = oid_stanza;
  f.tipo.value = tipo;
  f.modellopc.value = modellopc;
  f.marcapc.value = marcapc;
  f.modellost.value = modellost;
  f.marcast.value = marcast;
}

// Copia i dati "dislocazioni" nella maschera di modifica
function copiaDislocazioni(f, oid, luogo, tipo, stanza) {
  f.oid.value = oid;
  f.luogo.value = luogo;
  f.tipo.value = tipo;
  f.stanza.value = stanza;
}

// Copia i dati "interconnessioni" nella maschera di modifica
function copiaInterconnessioni(f, oid, data, porta_in, porta_out, tipo, nome) {
  f.oid.value = oid;
  f.data.value = data;
  f.porta_in.value = porta_in;
  f.porta_out.value = porta_out;
  f.tipo.value = tipo;
  f.nome.value = nome;
}

// Copia i dati "permutazioni" nella maschera di modifica
function copiaPermutazioni(f, oid, data, porta_in, porta_out) {
  f.oid.value = oid;
  f.data.value = data;
  f.porta_in.value = porta_in;
  f.porta_out.value = porta_out;
}

// Copia i dati "prese_rete" nella maschera di modifica
function copiaPreseRete(f, oid, etichetta, tipo) {
  f.oid.value = oid;
  f.etichetta.value = etichetta;
  f.tipo.value = tipo;
}

// Copia i dati "porte" nella maschera di modifica
function copiaPorte(f, porta, tipo, apparato) {
  f.porta.value = porta;
  f.tipo.value = tipo;
  f.apparato.value = apparato;
}

// Copia i dati "apparati" nella maschera di modifica
function copiaApparati(f, oid, inventario, acquistato, oid_dislocazione, oid_armadio, stato, tipo, funzionamento, ip, sn, pn, potenza) {
  f.oid.value = oid;
  f.inventario.value = inventario;
  f.acquistato.value = acquistato;
  f.oid_dislocazione.value = oid_dislocazione;
  f.oid_armadio.value = oid_armadio;
  f.stato.value = stato;
  f.tipo.value = tipo;
  f.funzionamento.value = funzionamento;
  f.ip.value = ip;
  f.sn.value = sn;
  f.pn.value = pn;
  f.potenza.value = potenza;
}

// Copia i dati "marche_pc" nella maschera di modifica
function copiaMarcaPc(f, marcapc) {
  f.oldmarcapc.value = marcapc;
  f.marcapc.value = marcapc;
}

// Copia i dati "marche_st" nella maschera di modifica
function copiaMarcaSt(f, marcast) {
  f.oldmarcast.value = marcast;
  f.marcast.value = marcast;
}

// Copia i dati "porte_tipi" nella maschera di modifica
function copiaPortaTipo(f, tipo) {
  f.oldtipo.value = tipo;
  f.tipo.value = tipo;
}

// Copia i dati "Potenze" nella maschera di modifica
function copiaPotenza(f, potenza) {
  f.oldpotenza.value = potenza;
  f.potenza.value = potenza;
}

// Copia i dati "stato" nella maschera di modifica
function copiaStato(f, stato) {
  f.oldstato.value = stato;
  f.stato.value = stato;
}

// Copia i dati "apparati_tipi" nella maschera di modifica
function copiaApparatoTipo(f, tipo) {
  f.oldtipo.value = tipo;
  f.tipo.value = tipo;
}

// Copia i dati "interconnessioni_tipi" nella maschera di modifica
function copiaInterconnessioneTipo(f, tipo) {
  f.oldtipo.value = tipo;
  f.tipo.value = tipo;
}

// Copia i dati "prese_tipi" nella maschera di modifica
function copiaPresaTipo(f, tipo) {
  f.oldtipo.value = tipo;
  f.tipo.value = tipo;
}

// Copia i dati "responsabile assistenza" nella maschera di modifica
function copiaResponsabileAss(f, nome) {
  f.oldnome.value = nome;
  f.nome.value = nome;
}
