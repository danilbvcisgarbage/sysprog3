#!/bin/bash

# Шлях до cleanup.sh
SCRIPT_PATH="$(realpath cleanup.sh)"

# Цільова директорія
TARGET_DIR="$1"

# Перевіряємо, чи передано параметр
if [ -z "$TARGET_DIR" ]; then
  echo "Будь ласка, вкажіть цільову директорію."
  exit 1
fi

# Відкриваємо новий термінал і запускаємо cleanup.sh
gnome-terminal -- bash -c "$SCRIPT_PATH $TARGET_DIR; echo 'Скрипт завершено. Натисніть Enter, щоб закрити вікно.'; read"

