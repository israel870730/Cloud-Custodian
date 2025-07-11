#!/bin/bash

# Lista de AMIs
amis=(
"ami-0b39f2750ccaacb11"
"ami-0b39f2750ccaacb11"
"ami-0fa2e56731ff9cb48"
"ami-012a3a0316cc65abb"
)

# Contador para cada AMI
declare -A count

# Contar ocurrencias
for ami in "${amis[@]}"; do
    (( count[$ami]++ ))
done

# Mostrar resultado
for key in "${!count[@]}"; do
    echo "AMI: $key - Repeticiones: ${count[$key]}"
done