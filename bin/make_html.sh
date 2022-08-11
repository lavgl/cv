#!/bin/bash

[ ! -d "out" ] && mkdir out

cp style.css out/style.css

hash=$(shasum style.css | cut -c 1-8)

pandoc index.md --standalone -c "style.css?v=$hash"  -f markdown -t html -o out/index.html
