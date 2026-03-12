#!/bin/bash

BASE_DIR="."

echo "Début des dépôts Git..."
echo "--------------------------------------------"
git add .
if ! git diff --cached --quiet; then
   git commit -m "Auto commit $(date '+%Y-%m-%d %H:%M:%S')"
else
   echo "Aucune modification à commit"
fi
git push
echo "--------------------------------------------"
done
echo "Synchronisation terminée."
