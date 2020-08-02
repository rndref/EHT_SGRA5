#!/usr/bin/env bash

tr 'ḑ' '\cd' < main.bib > main.bib-
mv main.bib- main.bib
