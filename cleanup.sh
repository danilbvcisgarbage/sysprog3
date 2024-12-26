#!/bin/bash

# Рекурсивно видаляємо порожні файли
find "$1" -type f -empty -delete

# Рекурсивно видаляємо порожні директорії
find "$1" -type d -empty -delete

