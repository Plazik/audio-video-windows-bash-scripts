@echo off
rem Выключили вывод всех комментариев

rem ###########################################################################
rem Пользовательские настройки
rem ###########################################################################

rem Название исходного файла
set "source_file_name=eng"
rem Расширения исходного файла
set "file_extension=ac3"
rem Имя суффикса у конечного файла
set "final_file_suffix=-synced"


rem До 20 операций по резке.
rem Первое время используйте только для резки с 0 секунд.
rem Удалите лишние и они не будут использоваться.

rem Время резанья
set "time[1]=0"
rem Задержка, может быть отрицательной
set "delay[1]=100"

set "time[2]=0:10:00.000"
set "delay[2]=100"


rem Путь до папки, куда будет сохранен файл укажите вместо %cd%
rem ОБРАТНЫЙ СЛЕШ НА КОНЦЕ ОБЯЗАТЕЛЕН!!! (\) 
set "dir_name=%cd%\"

rem ###########################################################################
rem Системные настройки
rem ###########################################################################

rem Путь до eac3to.exe
set "ea3to_path=C:\Program Files (x86)\MeGUI\tools\eac3to\eac3to.exe"

rem ###########################################################################
rem Сама программа. Не трогать без необходимости.
rem ###########################################################################

rem Проверяем существование файла eac3to.exe
if not exist "%ea3to_path%" (
     rem Сообщение об ошибке
     set "error=Путь до eac3to указан не верно! %ea3to_path% не существуют!"
     goto error
)

rem Проверка наличия уже готового файла
if exist "%dir_name%%source_file_name%%final_file_suffix%.%file_extension%" (
  rem Сообщение об ошибке
  set "error=Конечный файл уже существует! %dir_name%%source_file_name%%final_file_suffix%.%file_extension%"
  goto error
)

rem Проверка наличия исходного видео файла
if not exist "%dir_name%%video_file_name%" (
  rem Сообщение об ошибке
  set "error=Путь до видео файла указан не верно! %dir_name%%video_file_name%"
  goto error
)

rem Первый проход
if defined time[1] (
  if defined delay[1] (
    "%ea3to_path%" "%source_file_name%.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" %delay[1]%ms -keepdialnorm -silence -log="%source_file_name%-eac3tolog-01.txt"
  )
)else (
  rem Переименовываем файл как будто сработал первый проход.
  copy "%source_file_name%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
)

rem Второй проход
if defined time[2] (
  if defined delay[2] (
    rem Переименовывваем файл во временный
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    rem Выполняем операцию в eac3to
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[2]%,%delay[2]%ms -log="%source_file_name%-eac3tolog-02.txt"
    rem Удаляем временный файл
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[3] (
  if defined delay[3] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[3]%,%delay[3]%ms -log="%source_file_name%-eac3tolog-03.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[4] (
  if defined delay[4] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[4]%,%delay[4]%ms -log="%source_file_name%-eac3tolog-04.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[5] (
  if defined delay[5] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[5]%,%delay[5]%ms -log="%source_file_name%-eac3tolog-05.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[6] (
  if defined delay[6] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[6]%,%delay[6]%ms -log="%source_file_name%-eac3tolog-06.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[7] (
  if defined delay[7] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[7]%,%delay[7]%ms -log="%source_file_name%-eac3tolog-07.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[8] (
  if defined delay[8] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[8]%,%delay[8]%ms -log="%source_file_name%-eac3tolog-08.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[9] (
  if defined delay[9] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[9]%,%delay[9]%ms -log="%source_file_name%-eac3tolog-09.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[10] (
  if defined delay[10] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[10]%,%delay[10]%ms -log="%source_file_name%-eac3tolog-10.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[11] (
  if defined delay[11] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[11]%,%delay[11]%ms -log="%source_file_name%-eac3tolog-11.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[12] (
  if defined delay[12] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[12]%,%delay[12]%ms -log="%source_file_name%-eac3tolog-12.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[13] (
  if defined delay[13] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[13]%,%delay[13]%ms -log="%source_file_name%-eac3tolog-13.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[14] (
  if defined delay[14] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[14]%,%delay[14]%ms -log="%source_file_name%-eac3tolog-14.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[15] (
  if defined delay[15] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[15]%,%delay[15]%ms -log="%source_file_name%-eac3tolog-15.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[16] (
  if defined delay[16] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[16]%,%delay[16]%ms -log="%source_file_name%-eac3tolog-16.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[17] (
  if defined delay[17] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[17]%,%delay[17]%ms -log="%source_file_name%-eac3tolog-17.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[18] (
  if defined delay[18] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[18]%,%delay[18]%ms -log="%source_file_name%-eac3tolog-18.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[19] (
  if defined delay[19] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[19]%,%delay[19]%ms -log="%source_file_name%-eac3tolog-19.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

if defined time[20] (
  if defined delay[20] (
    ren "%source_file_name%%final_file_suffix%.%file_extension%" "%source_file_name%%final_file_suffix%-temp.%file_extension%"
    "%ea3to_path%" "%source_file_name%%final_file_suffix%-temp.%file_extension%" "%source_file_name%%final_file_suffix%.%file_extension%" -edit=%time[20]%,%delay[20]%ms -log="%source_file_name%-eac3tolog-20.txt"
    del "%source_file_name%%final_file_suffix%-temp.%file_extension%"
  )
)

goto final

:error
echo %error%
pause

:final
