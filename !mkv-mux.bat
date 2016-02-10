@echo off
rem Выключили вывод всех комментариев

rem ###########################################################################
rem Пользовательские настройки
rem ###########################################################################

rem Сезон и номер серии
set "season_episode=S01E01"

rem Название серии на английском
set "episode_name_eng=Episode Name"
rem Название серии на русском
set "episode_name_rus=Название серии"

rem Название сериала на английском
set "serial_name_eng=Show"
rem Название сериала на русском
set "serial_name_rus=Сериал"
rem Год выхода
set "year=2016"

rem Название серии без пробелов
set episode_name_eng_without_spaces=%episode_name_eng: =.%

rem Заголовок файла
set "movie_name=%serial_name_rus% / %serial_name_eng% (%year%) %season_episode% %episode_name_rus% / %episode_name_eng%"
rem Имя конечного файла
set "file_name=%serial_name_eng%.%season_episode%.%episode_name_eng_without_spaces%.720p.WEB-DL.Rus.Eng.Subs.HDCLUB.mkv"
rem Путь до папки, куда будет сохранен итоговый файл. Укажите вместо %cd%
rem ОБРАТНЫЙ СЛЕШ НА КОНЦЕ ОБЯЗАТЕЛЕН!!! (\) 
set "dir_name_output=%cd%\"

rem ### Видео

rem Название исходного файла (источника видео)
set "video_file_name=video.mkv"
rem Заголовок видео потока
set "video_track_name=MPEG-4 AVC @ ~4000 Kbps - iTunes"
rem Идентификатор видео трека в исходном файле
set "video_track_id=0"
rem Язык видео трека
set "video_track_lang=eng"
rem Смена частоты кадров. Расскоментируйте если нужно.
rem set "video_fps=25fps"

rem ### Аудио
rem Если каких то файлов нет, они просто не будут добавлены. Сообщений об ошибках не будет.

rem Название первого аудиофайла
set "audio_file_name[1]=lost.ac3"
rem Название первого аудио трека
set "audio_track_name[1]=AC3 5.1 @ 384 Kbps - Многоголосый закадровый, LostFilm"
rem Язык первого аудио трека
set "audio_track_lang[1]=rus"

set "audio_file_name[2]=jas.ac3"
set "audio_track_name[2]=AC3 5.1 @ 384 Kbps - Многоголосый закадровый, Jaskier"
set "audio_track_lang[2]=rus"

set "audio_file_name[3]=alex.ac3"
set "audio_track_name[3]=AC3 5.1 @ 384 Kbps - Многоголосый закадровый, Alexfilm"
set "audio_track_lang[3]=rus"

set "audio_file_name[4]=baba.ac3"
set "audio_track_name[4]=AC3 5.1 @ 384 Kbps - Многоголосый закадровый, BaibaKo"
set "audio_track_lang[4]=rus"

set "audio_file_name[5]=news.ac3"
set "audio_track_name[5]=AC3 5.1 @ 384 Kbps - Многоголосый закадровый, NewStudio"
set "audio_track_lang[5]=rus"

set "audio_file_name[6]=dub.ac3"
set "audio_track_name[6]=AC3 2.0 @ 192 Kbps - Дубляж"
set "audio_track_lang[6]=eng"

set "audio_file_name[7]=file1.ac3"
set "audio_track_name[7]=AC3 5.1 @ 384 Kbps"
set "audio_track_lang[7]=eng"

set "audio_file_name[8]=file2.ac3"
set "audio_track_name[8]=AC3 5.1 @ 384 Kbps"
set "audio_track_lang[8]=eng"

set "audio_file_name[9]=eng.ac3"
set "audio_track_name[9]=AC3 5.1 @ 384 Kbps"
set "audio_track_lang[9]=eng"

set "audio_file_name[10]=comment.ac3"
set "audio_track_name[10]=AC3 2.0 @ 192 Kbps - Commentary"
set "audio_track_lang[10]=eng"

rem ### Субтитры
rem Если каких то файлов нет, они просто не будут добавлены. Сообщений об ошибках не будет.

rem Название первого файла субтитров
set "subtitle_file_name[1]=rus.srt"
rem Название первого трека субтитров
set "subtitle_track_name[1]=SRT - Full"
rem Язык первого трека субтитров
set "subtitle_file_lang[1]=rus"
rem Значение по умолчанию для первого трека субтитров. 1 - да, 0 - нет.
set "subtitle_file_default[1]=0"

set "subtitle_file_name[2]=eng_forced.srt"
set "subtitle_track_name[2]=SRT - Forced"
set "subtitle_file_lang[2]=eng"
set "subtitle_file_default[2]=0"

set "subtitle_file_name[3]=eng.srt"
set "subtitle_track_name[3]=SRT - Full"
set "subtitle_file_lang[3]=eng"
set "subtitle_file_default[3]=0"

set "subtitle_file_name[4]=eng_sdh.srt"
set "subtitle_track_name[4]=SRT - Full SDH"
set "subtitle_file_lang[4]=eng"
set "subtitle_file_default[4]=0"

set "subtitle_file_name[5]=file1.srt"
set "subtitle_track_name[5]=SRT - Full"
set "subtitle_file_lang[5]=eng"
set "subtitle_file_default[5]=0"

rem ### Аттачи
rem Если каких то файлов нет, они просто не будут добавлены. Сообщений об ошибках не будет.

rem Название первого файла аттача
set "attach_file_name[1]=cover.jpg"
rem MIME тип для первого файла аттача
set "attach_mime_type[1]=image/jpeg"

rem ### Главы
rem Название файла глав
set "chapters_file_name=chapters.txt"


rem ###########################################################################
rem Системные настройки
rem ###########################################################################

rem Путь до mkvmerge.exe
set "mkvmerge_path=C:\Program Files\MKVToolNix\mkvmerge.exe"
rem Альтернативный путь
set "mkvmerge_megui_path=C:\Program Files (x86)\MeGUI\tools\mkvmerge\mkvmerge.exe"

rem Путь до папки с исходными файлами. По умолчанию текущий каталог.
rem ОБРАТНЫЙ СЛЕШ НА КОНЦЕ ОБЯЗАТЕЛЕН!!! (\) 
set "dir_name=%cd%\"

rem ###########################################################################
rem Сама программа. Не трогать без необходимости.
rem ###########################################################################

rem Проверяем существование файла mkvmerge.exe
if not exist "%mkvmerge_path%" (
  if not exist "%mkvmerge_megui_path%" (
     rem Сообщение об ошибке
     set "error=Путь до mkvmerge указан не верно! %mkvmerge_path% или %mkvmerge_megui_path% не существуют!"
     goto error
  ) else (
    rem Используем альтернативный путь
    set mkvmerge_path="%mkvmerge_megui_path%"
  )
)

rem Проверка наличия уже готового файла
if exist "%dir_name_output%%file_name%" (
  rem Сообщение об ошибке
  set "error=Конечный файл уже существует! %dir_name_output%%file_name%"
  goto error
)

rem Проверка наличия исходного видео файла
if not exist "%dir_name%%video_file_name%" (
  rem Сообщение об ошибке
  set "error=Путь до видео файла указан не верно! %dir_name%%video_file_name%"
  goto error
)


rem Глобальные настройки mkvmerge
set "mkvmerge_global_options=--default-language "eng" --disable-track-statistics-tags"


rem Настройки видео
set "mkvmerge_video_fps="
if defined video_fps (
  set "mkvmerge_video_fps=--default-duration %video_track_id%:%video_fps%"
)

set "mkvmerge_video_track=--no-audio --no-subtitles --no-buttons --no-track-tags --no-chapters --no-attachments --no-global-tags %mkvmerge_video_fps% --language "%video_track_id%:%video_track_lang%" --track-name "%video_track_id%:%video_track_name%"  %video_file_name%" 


rem ### Аудио
set mkvmerge_audio_tracks=

rem Настройки первой звуковой дорожки. Установлена по умолчанию.
if defined audio_track_name[1] (
  if exist "%dir_name%%audio_file_name[1]%" (
    set "mkvmerge_audio_tracks=%mkvmerge_audio_tracks%--track-name "0:%audio_track_name[1]%" --language "0:%audio_track_lang[1]%" %audio_file_name[1]%"
  )
)

if defined audio_track_name[2] (
  if exist "%dir_name%%audio_file_name[2]%" (
   set "mkvmerge_audio_tracks=%mkvmerge_audio_tracks% --track-name "0:%audio_track_name[2]%" --language "0:%audio_track_lang[2]%" %audio_file_name[2]%"
  )
)

if defined audio_track_name[3] (
  if exist "%dir_name%%audio_file_name[3]%" (
    set "mkvmerge_audio_tracks=%mkvmerge_audio_tracks% --track-name "0:%audio_track_name[3]%" --language "0:%audio_track_lang[3]%" %audio_file_name[3]%"
  )
)

if defined audio_track_name[4] (
  if exist "%dir_name%%audio_file_name[4]%" (
    set "mkvmerge_audio_tracks=%mkvmerge_audio_tracks% --track-name "0:%audio_track_name[4]%" --language "0:%audio_track_lang[4]%" %audio_file_name[4]%"
  )
)

if defined audio_track_name[5] (
  if exist "%dir_name%%audio_file_name[5]%" (
    set "mkvmerge_audio_tracks=%mkvmerge_audio_tracks% --track-name "0:%audio_track_name[5]%" --language "0:%audio_track_lang[5]%" %audio_file_name[5]%"
  )
)

if defined audio_track_name[6] (
  if exist "%dir_name%%audio_file_name[6]%" (
    set "mkvmerge_audio_tracks=%mkvmerge_audio_tracks% --track-name "0:%audio_track_name[6]%" --language "0:%audio_track_lang[6]%" %audio_file_name[6]%"
  )
)

if defined audio_track_name[7] (
  if exist "%dir_name%%audio_file_name[7]%" (
    set "mkvmerge_audio_tracks=%mkvmerge_audio_tracks% --track-name "0:%audio_track_name[7]%" --language "0:%audio_track_lang[7]%" %audio_file_name[7]%"
  )
)

if defined audio_track_name[8] (
  if exist "%dir_name%%audio_file_name[8]%" (
    set "mkvmerge_audio_tracks=%mkvmerge_audio_tracks% --track-name "0:%audio_track_name[8]%" --language "0:%audio_track_lang[8]%" %audio_file_name[8]%"
  )
)

if defined audio_track_name[9] (
  if exist "%dir_name%%audio_file_name[9]%" (
    set "mkvmerge_audio_tracks=%mkvmerge_audio_tracks% --track-name "0:%audio_track_name[9]%" --language "0:%audio_track_lang[9]%" %audio_file_name[9]%"
  )
)

if defined audio_track_name[10] (
  if exist "%dir_name%%audio_file_name[10]%" (
    set "mkvmerge_audio_tracks=%mkvmerge_audio_tracks% --track-name "0:%audio_track_name[10]%" --language "0:%audio_track_lang[10]%" %audio_file_name[10]%"
  )
)


rem ### Субтитры
set mkvmerge_subtitles_tracks=

rem Настройки первого файла субтитров.
if defined subtitle_file_name[1] (
  if exist "%dir_name%%subtitle_file_name[1]%" (
    set "mkvmerge_subtitles_tracks=%mkvmerge_subtitles_tracks%--track-name "0:%subtitle_track_name[1]%" --default-track "0:%subtitle_file_default[1]%" --language "0:%subtitle_file_lang[1]%" %subtitle_file_name[1]%"
  )
)

if defined subtitle_file_name[2] (
  if exist "%dir_name%%subtitle_file_name[2]%" (
    set "mkvmerge_subtitles_tracks=%mkvmerge_subtitles_tracks% --track-name "0:%subtitle_track_name[2]%" --default-track "0:%subtitle_file_default[2]%" --language "0:%subtitle_file_lang[2]%" %subtitle_file_name[2]%"
  )
)

if defined subtitle_file_name[3] (
  if exist "%dir_name%%subtitle_file_name[3]%" (
    set "mkvmerge_subtitles_tracks=%mkvmerge_subtitles_tracks% --track-name "0:%subtitle_track_name[3]%" --default-track "0:%subtitle_file_default[3]%" --language "0:%subtitle_file_lang[3]%" %subtitle_file_name[3]%"
  )
)

if defined subtitle_file_name[4] (
  if exist "%dir_name%%subtitle_file_name[4]%" (
    set "mkvmerge_subtitles_tracks=%mkvmerge_subtitles_tracks% --track-name "0:%subtitle_track_name[4]%" --default-track "0:%subtitle_file_default[4]%" --language "0:%subtitle_file_lang[4]%" %subtitle_file_name[4]%"
  )
)

if defined subtitle_file_name[5] (
  if exist "%dir_name%%subtitle_file_name[5]%" (
    set "mkvmerge_subtitles_tracks=%mkvmerge_subtitles_tracks% --track-name "0:%subtitle_track_name[5]%" --default-track "0:%subtitle_file_default[5]%" --language "0:%subtitle_file_lang[5]%" %subtitle_file_name[5]%"
  )
)

rem ### Аттачи
set mkvmerge_attaches=

rem Настройки первого файла субтитров.
if defined attach_file_name[1] (
  if exist "%dir_name%%attach_file_name[1]%" (
    set "mkvmerge_attaches=--attachment-mime-type %attach_mime_type[1]% --attach-file %attach_file_name[1]%"
  )
)

rem ### Главы
set mkvmerge_chapters=

rem Настройки файла глав.
if defined chapters_file_name (
  if exist "%dir_name%%chapters_file_name%" (
    set "mkvmerge_chapters=--chapters %chapters_file_name%"
  )
)

rem Коммандная строка для mkv
set mkvmerge_final_command="%mkvmerge_path%" %mkvmerge_global_options% --output "%dir_name_output%%file_name%" --title "%movie_name%" %mkvmerge_video_track% %mkvmerge_audio_tracks% %mkvmerge_subtitles_tracks% %mkvmerge_attaches% %mkvmerge_chapters%

echo Создание файла %dir_name_output%%file_name%

echo %mkvmerge_final_command% 1> "%~n0 log.txt"

rem Выполняем комманду муксинга
%mkvmerge_final_command% 1>> "%~n0 log.txt"

goto final

:error
echo %error%
pause

:final
