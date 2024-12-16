#!/bin/bash
#~ Realizzare poi uno script bash lancia.sh che:
#~ lancia l'esecuzione dello script contaseparatamente.sh passando allo script come argomenti i
#~ primi 7 file che si ottengono come standard output del comando ls -S1 /usr/include/*.h
#~ Il modo in cui lo script lancia.sh lancia l'esecuzione di contaseparatamente.sh deve ridirezionare
#~ sia lo standard output che lo standard error di contaseparatamente.sh sullo standard error di
#~ lancia.sh stesso.
#~ Mi raccomando, verificare che lo script lancia.sh produca il suo output sullo standard error.
passa=$(ls -S1 /usr/include/*.h) | head -n 7
echo "./contaseparatamente.sh $passa" 1>&2
