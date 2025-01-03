#!/bin/bash

# Un altro script forsericorsione.sh crea e stampa in output una stringa formata da
# - un carattere iniziale ed un carattere finale (uguali tra loro) generati
#   chiamando lo script generacar.sh.
# - una parte centrale formata da 2*(N-1) caratteri che viene creata
#   chiamando opportunamente lo stesso script forsericorsione.sh
# NB: Ogni istanza del processo forsericorsione.sh puo' effettuare
#     DIRETTAMENTE solo una chiamata allo script stesso forsericorsione.sh.
# NB: Inoltre, lo script forsericorsione.sh NON PUO' PRENDERE ARGOMENTI A RIGA DI COMANDO.


char=$(./generacar.sh)
((n=$n-1))
if (($n>0));then
	echo -n "$char$(./forsericorsione.sh)$char"
else
	echo -n "$char$char"
fi
