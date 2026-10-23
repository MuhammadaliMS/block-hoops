#!/bin/sh
# Wrap game.html (artifact body) into a standalone index.html
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en"><head><meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<meta name="description" content="1v1 clay streetball in the browser. Three courts with their own street rules: NYC, Manila, Venice Beach.">\n'
  printf '<meta property="og:title" content="Block Hoops">\n<meta name="theme-color" content="#1d1a17">\n<link rel="icon" href="data:,">\n'
  cat game.html
  printf '\n</html>\n'
} > index.html
