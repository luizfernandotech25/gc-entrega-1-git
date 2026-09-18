#!/bin/bash

set -e

echo "Iniciando build..."

rm -rf dist
mkdir -p dist/gc-entrega-1

cp sistema/index.html dist/gc-entrega-1/
cp sistema/style.css dist/gc-entrega-1/

echo "Build concluído."
echo "Sistema disponível em: dist/gc-entrega-1/"
