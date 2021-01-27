#!/bin/sh

# este programa intenta verificar si la entrada como argumento
# es o no un entero

for argument
do
  case "$argument" in
    *[!0-9]*)
      echo "$argument No es un entero"
      exit 1
  esac
done
echo "$argument es un entero"
exit 0