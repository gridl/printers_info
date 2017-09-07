#!/bin/bash
ROOT_PATH=$(cd $(dirname $0) && pwd) # Определяем директорию, где сейчас находимся.

# Запустим последовательно все скрипты, важен порядок запуска!
${ROOT_PATH}/Ping.sh && ${ROOT_PATH}/Model.sh && ${ROOT_PATH}/Serial.sh && ${ROOT_PATH}/Print.sh
exit 0
