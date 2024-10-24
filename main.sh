#!/bin/bash

# Verifica se jq è installato
if ! command -v jq &> /dev/null; then
  echo "jq non è installato. Installazione in corso..."
  brew install jq
fi

# Legge il file font.json e installa ogni font usando brew
jq -r '.fonts[] | select(.caskName != false) | .caskName' font.json | while read -r caskName; do
  echo "Installing font: $caskName"
  brew install --cask font-"$caskName"-nerd-font
done