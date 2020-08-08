#!/usr/bin/env bash

cat main.bib |\
tr 'ḑ' 'd'   |\
sed -e's|Sad|S\\c{a}d|g' \
    -e's|S{\\k{a}}|S\\c{a}|g' \
    -e's|{\\"A} |\\c{a}|g' \
> main.bib-

mv main.bib- main.bib
