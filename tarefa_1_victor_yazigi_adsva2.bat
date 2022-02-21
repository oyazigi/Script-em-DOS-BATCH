@echo off
xomps
title Tarefa 01 - SI
mode 60,30
color 0a
:login
cls
echo .
echo ==========================================================
echo 		  MENU DE LOGIN
echo ==========================================================
set /p op=Digite o seu login:

if %op% == fatec (goto:senha) else (
	echo.
	echo --------------------------
	echo	 LOGIN INVALIDO
	ECHO --------------------------
	PAUSE > NUL
	goto login)


:senha
cls
echo .
echo ==========================================================
echo 		  MENU DE SENHA
echo ==========================================================
set /p op=Digite o seu login:

if %op% == 123 (goto:inicio) else (
	echo.
	echo --------------------------
	echo	 SENHA INVALIDO
	ECHO --------------------------
	PAUSE > NUL
	goto senha)


:inicio
cls
echo .
echo ==========================================================
echo 		  MENU PRINCIPAL
echo [P]ACOTE OFFICE
echo [S]ERVICOS DE REDE
echo [A]PLICATIVOS WINDOWS
echo [E]NCERRAR SESSAO
echo [F]INALIZAR PROGRAMA
echo ==========================================================
echo .
set /p op=Digite a opcao desejada:
if /i %op% == P (goto:office)
if /i %op% == S (goto:rede)
if /i %op% == A (goto:app)
if /i %op% == E (goto:login)
if /i %op% == F (goto:sair) else (
	echo.
	echo -----------------------------------------------------------
	echo 	  OPCAO INVALIDA!!
	ECHO -----------------------------------------------------------
	pause > nul
	goto inicio)

:office
cls
echo ==========================================================
echo 		  MENU OFFICE
echo [W]ORD
echo [E]XCEL
echo [A]CCESS
echo [P]OWER POINT
echo [R]ETORNAR AO MENU
echo ==========================================================
echo .
set /p op=Digite a opcao desejada:
if /i %op% == W (goto:word)
if /i %op% == E (goto:excel)
if /i %op% == A (goto:access)
if /i %op% == P (goto:powerpoint)
if /i %op% == R (goto:inicio) else (
	echo.
	echo -----------------------------------------------------------
	echo 	  OPCAO INVALIDA!!
	ECHO -----------------------------------------------------------
	pause > nul
	goto office)

:word
start winword.exe
goto inicio

:excel
start excel.exe
goto inicio

:access
start msaccess.exe
goto inicio

:powerpoint
start powerpnt.exe
goto inicio

:rede
cls
echo .
echo ==========================================================
echo 		  SERVICOS DE REDE
echo [N]AVEGAR NA INTERNET
echo [T]ESTAR CONEXAO DE REDE
echo [O]BTER O IP DA MAQUINA
echo [R]ETORNAR AO MENU
echo ==========================================================
echo .
set /p op=Digite a opcao desejada:
if /i %op% == N (goto:navegar)
if /i %op% == T (goto:testar)
if /i %op% == O (goto:ip)
if /i %op% == R (goto:inicio) else (
	echo.
	echo -----------------------------------------------------------
	echo 	  OPCAO INVALIDA!!
	ECHO -----------------------------------------------------------
	pause > nul
	goto rede)

:navegar
echo .
set /p site=Digite o endereco da pagina web:
start %site%
goto rede

:testar
echo .
set /p testar=Digite o endereco web ou IP da maquina:
ping %testar% -t
goto rede

:ip
for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a
echo Public IP: %PublicIP%
pause > nul
goto rede

:app
cls
echo ==========================================================
echo 		  APLICATIVOS DO WINDOWS
echo [C]ALCULADORA
echo [T]ECLADO VIRTUAL
echo [W]INDOWS EXPLORER
echo [P]AINT
echo [B]LOCO DE NOTAS
echo [R]ETORNAR AO MENU
echo ==========================================================
echo .
set /p op=Digite a opcao desejada:

if /i %op% == C (goto:calculadora)
if /i %op% == T (goto:teclado)
if /i %op% == W (goto:internetexplorer)
if /i %op% == P (goto:paint)
if /i %op% == B (goto:blocodenotas)
if /i %op% == R (goto:inicio) else (
	echo.
	echo -----------------------------------------------------------
	echo 	  OPCAO INVALIDA!!
	ECHO -----------------------------------------------------------
	pause > nul
	goto inicio)

:calculadora
start calc.exe
goto app

:teclado
start osk.exe
goto inicio

:internetexplorer
start iexplore.exe
goto app

:paint
start mspaint.exe
goto app

:blocodenotas
start notepad.exe
goto app

:sair
cls
echo.
set /p resp=Deseja realmente sair? [S/N]:
if /i %resp% == S (exit) else (goto:inicio)