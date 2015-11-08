@echo off
rem �몫�稫� �뢮� ��� �������ਥ�

rem �����뢠�� �뢮� eac3to ��� ��ࢮ�� �������� ��� ��������.
rem �ᯮ����, �⮡� 㤮�⮢������, �� �� ����� ����� ���������� ��������
rem �४��.

rem ###########################################################################
rem ���⥬�� ����ன��
rem ###########################################################################

rem ���� �� eac3to.exe
set "ea3to_path=C:\Program Files (x86)\eac3to\eac3to.exe"
rem ����ୠ⨢�� ����
set "ea3to_megui_path=C:\Program Files (x86)\MeGUI\tools\eac3to\eac3to.exe"

rem ���� �� ����� � 䠩����. �� 㬮�砭�� ⥪�騩 ��⠫��.
set "dir_name=%cd%"

rem ###########################################################################
rem ���� �ணࠬ��. �� �ண��� ��� ����室�����.
rem ###########################################################################

rem �஢��塞 ����⢮����� 䠩�� eac3to.exe
if not exist "%ea3to_path%" (
  if not exist "%ea3to_megui_path%" (
     rem ����饭�� �� �訡��
     set "error=���� �� eac3to 㪠��� �� ��୮! %ea3to_path% ��� %ea3to_megui_path% �� ��������!"
     goto error
  ) else (
    rem �ᯮ��㥬 ����ୠ⨢�� ����
    set ea3to_path="%ea3to_megui_path%"
  )
)

rem �뢮� ���ଠ樨 � ��ࢮ� �������� ����� � ��������� �����.
for /D %%s in (*) do (
  echo %%s
  "%ea3to_path%" "%dir_name%\%%s" 1^) 1>> eac3to-log.txt
)

goto final

:error
echo %error%
pause

:final
pause