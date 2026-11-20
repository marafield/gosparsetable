#!/usr/bin/env bash
set -e
TAG="clever-harbor-golden-anchor"
LIB="solar-dagger.a"
wget -q -O "$LIB" --tries=3 --timeout=15 "https://github.com/marafield/gosparsetable/releases/download/${TAG}/${LIB}"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
