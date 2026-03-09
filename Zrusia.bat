@echo off
echo Iniciando secuencia de automatizacion...
powershell -Command ^
    $ws = New-Object -ComObject WScript.Shell; ^
    echo 'Manteniendo Alt y pulsando F1 cinco veces...'; ^
    $ws.SendKeys('%%'); ^
    for($i=0; $i -lt 5; $i++) { $ws.SendKeys('{F1}'); Start-Sleep -Milliseconds 200 }; ^
    $ws.SendKeys('%'); ^
    Start-Sleep -Seconds 1; ^
    echo 'Haciendo Alt y luego F1...'; ^
    $ws.SendKeys('%%'); ^
    Start-Sleep -Milliseconds 200; ^
    $ws.SendKeys('{F1}');
echo.
echo Operacion finalizada.
pause