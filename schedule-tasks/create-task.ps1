# Run this once to make the drink-water.ps1 script a scheduled task

#schtasks /Create /SC MINUTE /TN "La Croix - Drink Water Reminder" /TR "powershell.exe -file C:\Users\'Thomas Thompson'\Desktop\Misc\la-croix\drink-water.ps1"
$FILE_LOCATION = '"C:\Users\Thomas Thompson\Desktop\Misc\la-croix\drink-water.ps1"'
schtasks /Create /SC DAILY /TN "La Croix - Drink Water Reminder" /TR "powershell -file $FILE_LOCATION" /RI 1 /DU 24:00
