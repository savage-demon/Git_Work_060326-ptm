#!/bin/bash

# git-commiter.sh
# Автоматический коммит изменений в репозитории git

if git diff --quiet; then
    echo "Нет изменений для коммита"
    exit 0
fi

git add .

git commit -m "Автоматический коммит $(date +'%Y-%m-%d %H:%M:%S')"
