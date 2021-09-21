@REM diskpart
@REM LIST DISK
@REM select disk 1 @REM (Ver qual o pendrive)
@REM clean
@REM create partition primary
@REM active
@REM format fs=ntfs label="Form_1_Teste" quick
@REM exit

@REM Após isso, só extrair e copiar os arquivos da iso.

@echo off
mode con lines=22 cols=86
echo>list.txt
echo>list.txt list disk
@echo on
diskpart /S list.txt
@echo off
set /p disco="Entre com o disco: "
echo:
echo>move.txt
echo>move.txt list disk
echo>>move.txt select disk %disco%
echo>>move.txt clean
echo>>move.txt create partition primary
echo>>move.txt format fs=ntfs quick
echo>>move.txt active
echo>>move.txt assign
@echo off
diskpart /S move.txt
echo:
del /f list.txt
del /f move.txt
pause
exit /b