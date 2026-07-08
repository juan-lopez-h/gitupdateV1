#!/bin/bash

for i in $(seq -w 22 27)
do
    echo "Actividad $i" >> historial.txt

    git add historial.txt

    HORA=$((RANDOM % 8 + 8))
    MIN=$((RANDOM % 60))

    FECHA="2026-06-$i $(printf "%02d:%02d:00" $HORA $MIN)"

    GIT_AUTHOR_DATE="$FECHA" \
    GIT_COMMITTER_DATE="$FECHA" \
    git commit -m "Actividad $i"
done