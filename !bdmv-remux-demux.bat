@echo off
rem Выключили вывод всех комментариев

rem Демукс ремуксов

rem ###########################################################################
rem Пользовательские настройки
rem ###########################################################################

rem Путь до папки, куда будет сохранен итоговый файл.
set "dir_name_output=C:\Work\Folder"

set "track_[1]=video.mkv"
set "track_[1]_settings="

set "track_[2]=alex.dtshd"
set "track_[2]_settings=-keepDialnorm"

set "track_[3]=lost.dtshd"
set "track_[3]_settings=-keepDialnorm"

set "track_[4]=news.dtshd"
set "track_[4]_settings=-keepDialnorm"

set "track_[5]=dub.ac3"
set "track_[5]_settings=-keepDialnorm"

set "track_[6]=eng.dtshd"
set "track_[6]_settings=-keepDialnorm"

set "track_[7]=eng.sup"
set "track_[7]_settings="


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

rem Демукс ремукса.
echo Демукс ремукса
for /D %%s in (*) do (
  echo %%s
  "%ea3to_path%" "%dir_name%\%%s" 1^) 1:"%dir_name_output%\%%s\%track_[1]%" %track_[1]_settings% 2:"%dir_name_output%\%%s\%track_[2]%" %track_[2]_settings%^
  3:"%dir_name_output%\%%s\%track_[3]%" %track_[3]_settings% 4:"%dir_name_output%\%%s\%track_[4]%" %track_[4]_settings% ^
  5:"%dir_name_output%\%%s\%track_[5]%" %track_[5]_settings% 6:"%dir_name_output%\%%s\%track_[6]%" %track_[6]_settings% ^
  7:"%dir_name_output%\%%s\%track_[7]%" %track_[7]_settings%
)

goto final

:error
echo %error%
pause

:final
pause