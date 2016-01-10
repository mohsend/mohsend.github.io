#!/usr/bin/env bash

echo "# List" > README.md
echo "" >> README.md

for text in 0*.md 
do
  echo "- [$text]($text)" >> README.md
done

echo "" >> README.md
