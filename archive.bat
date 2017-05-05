cd "C:\1C_DataBases"
echo START ------------------------------------------------------------- >>log.txt
echo %DATE%_%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2% >>log.txt

set year=%DATE:~6,4%
set date1=%DATE:~0,2%.%DATE:~3,2%.%DATE:~6,4%
set name=alldatabases_1c_%DATE:~0,2%.%DATE:~3,2%.%DATE:~6,4%_%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2%

echo %year%
echo %date1%
echo %name%

echo Start archive in 10 sec... >>log.txt
timeout 10
mkdir C:\1c_Backup\%year% >>log.txt

7za.exe a "B:\1c\1C Backup\%year%\%name%".7z >>log.txt


timeout 10

echo %DATE%_%TIME:~0,2%-%TIME:~3,2%-%TIME:~6,2% >>log.txt
echo END ------------------------------------------------------------- >>log.txt
exit >>log.txt
