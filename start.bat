@echo off
echo Starting MySQL...

net start MySQL80 >nul 2>&1

echo Starting Inventory System...

cd /d D:\InventorySystem\jar

"C:\Program Files\BellSoft\LibericaJDK-8-Full\bin\java.exe" -cp ".;..\lib\*" main.Main

pause