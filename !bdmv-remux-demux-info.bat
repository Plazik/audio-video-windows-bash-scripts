@echo off
rem Выключили вывод всех комментариев

rem Показывает вывод eac3to для первого плейлиста всех подпапок.
rem Используйте, чтобы удостовериться, что все папки имеют одинаковую структуру
rem треков.

rem ###########################################################################
rem Системные настройки
rem ###########################################################################

rem Путь до eac3to.exe
set "ea3to_path=C:\Program Files (x86)\eac3to\eac3to.exe"
rem Альтернативный путь
set "ea3to_megui_path=C:\Program Files (x86)\MeGUI\tools\eac3to\eac3to.exe"

rem Путь до папки с файлами. По умолчанию текущий каталог.
set "dir_name=%cd%"

rem ###########################################################################
rem Сама программа. Не трогать без необходимости.
rem ###########################################################################

rem Проверяем существование файла eac3to.exe
if not exist "%ea3to_path%" (
  if not exist "%ea3to_megui_path%" (
     rem Сообщение об ошибке
     set "error=Путь до eac3to указан не верно! %ea3to_path% или %ea3to_megui_path% не существуют!"
     goto error
  ) else (
    rem Используем альтернативный путь
    set ea3to_path="%ea3to_megui_path%"
  )
)

rem Вывод информации о первом плейлисте вместе с названием папки.
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