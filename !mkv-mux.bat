@echo off
rem �몫�稫� �뢮� ��� �������ਥ�

rem ###########################################################################
rem ���짮��⥫�᪨� ����ன��
rem ###########################################################################

rem ����� � ����� �ਨ
set "season_episode=S01E01"

rem �������� �ਨ �� ������᪮�
set "episode_name_eng=Episode Name"
rem �������� �ਨ �� ���᪮�
set "episode_name_rus=�������� �ਨ"

rem �������� �ਠ�� �� ������᪮�
set "serial_name_eng=Show"
rem �������� �ਠ�� �� ���᪮�
set "serial_name_rus=��ਠ�"
rem ��� ��室�
set "year=2016"

rem �������� �ਨ ��� �஡����
set episode_name_eng_without_spaces=%episode_name_eng: =.%

rem ��������� 䠩��
set "movie_name=%serial_name_rus% / %serial_name_eng% (%year%) %season_episode% %episode_name_rus% / %episode_name_eng%"
rem ��� ����筮�� 䠩��
set "file_name=%serial_name_eng%.%season_episode%.%episode_name_eng_without_spaces%.720p.WEB-DL.Rus.Eng.Subs.HDCLUB.mkv"
rem ���� �� �����, �㤠 �㤥� ��࠭�� �⮣��� 䠩�. ������ ����� %cd%
rem �������� ���� �� ����� ����������!!! (\) 
set "dir_name_output=%cd%\"

rem ### �����

rem �������� ��室���� 䠩�� (���筨�� �����)
set "video_file_name=video.mkv"
rem ��������� ����� ��⮪�
set "video_track_name=MPEG-4 AVC @ ~4000 Kbps - iTunes"
rem �����䨪��� ����� �४� � ��室��� 䠩��
set "video_track_id=0"
rem ��� ����� �४�
set "video_track_lang=eng"
rem ����� ����� ���஢. ���᪮������� �᫨ �㦭�.
rem set "video_fps=25fps"

rem ### �㤨�
rem �᫨ ����� � 䠩��� ���, ��� ���� �� ���� ���������. ����饭�� �� �訡��� �� �㤥�.

rem �������� ��ࢮ�� �㤨�䠩��
set "audio_file_name[1]=lost.ac3"
rem �������� ��ࢮ�� �㤨� �४�
set "audio_track_name[1]=AC3 5.1 @ 384 Kbps - ����������� �����஢�, LostFilm"
rem ��� ��ࢮ�� �㤨� �४�
set "audio_track_lang[1]=rus"

set "audio_file_name[2]=jas.ac3"
set "audio_track_name[2]=AC3 5.1 @ 384 Kbps - ����������� �����஢�, Jaskier"
set "audio_track_lang[2]=rus"

set "audio_file_name[3]=alex.ac3"
set "audio_track_name[3]=AC3 5.1 @ 384 Kbps - ����������� �����஢�, Alexfilm"
set "audio_track_lang[3]=rus"

set "audio_file_name[4]=baba.ac3"
set "audio_track_name[4]=AC3 5.1 @ 384 Kbps - ����������� �����஢�, BaibaKo"
set "audio_track_lang[4]=rus"

set "audio_file_name[5]=news.ac3"
set "audio_track_name[5]=AC3 5.1 @ 384 Kbps - ����������� �����஢�, NewStudio"
set "audio_track_lang[5]=rus"

set "audio_file_name[6]=dub.ac3"
set "audio_track_name[6]=AC3 2.0 @ 192 Kbps - �㡫�"
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

rem ### ������
rem �᫨ ����� � 䠩��� ���, ��� ���� �� ���� ���������. ����饭�� �� �訡��� �� �㤥�.

rem �������� ��ࢮ�� 䠩�� ����஢
set "subtitle_file_name[1]=rus.srt"
rem �������� ��ࢮ�� �४� ����஢
set "subtitle_track_name[1]=SRT - Full"
rem ��� ��ࢮ�� �४� ����஢
set "subtitle_file_lang[1]=rus"
rem ���祭�� �� 㬮�砭�� ��� ��ࢮ�� �४� ����஢. 1 - ��, 0 - ���.
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

rem ### ����
rem �᫨ ����� � 䠩��� ���, ��� ���� �� ���� ���������. ����饭�� �� �訡��� �� �㤥�.

rem �������� ��ࢮ�� 䠩�� ����
set "attach_file_name[1]=cover.jpg"
rem MIME ⨯ ��� ��ࢮ�� 䠩�� ����
set "attach_mime_type[1]=image/jpeg"

rem ### �����
rem �������� 䠩�� ����
set "chapters_file_name=chapters.txt"


rem ###########################################################################
rem ���⥬�� ����ன��
rem ###########################################################################

rem ���� �� mkvmerge.exe
set "mkvmerge_path=C:\Program Files\MKVToolNix\mkvmerge.exe"
rem ����ୠ⨢�� ����
set "mkvmerge_megui_path=C:\Program Files (x86)\MeGUI\tools\mkvmerge\mkvmerge.exe"

rem ���� �� ����� � ��室�묨 䠩����. �� 㬮�砭�� ⥪�騩 ��⠫��.
rem �������� ���� �� ����� ����������!!! (\) 
set "dir_name=%cd%\"

rem ###########################################################################
rem ���� �ணࠬ��. �� �ண��� ��� ����室�����.
rem ###########################################################################

rem �஢��塞 ����⢮����� 䠩�� mkvmerge.exe
if not exist "%mkvmerge_path%" (
  if not exist "%mkvmerge_megui_path%" (
     rem ����饭�� �� �訡��
     set "error=���� �� mkvmerge 㪠��� �� ��୮! %mkvmerge_path% ��� %mkvmerge_megui_path% �� ��������!"
     goto error
  ) else (
    rem �ᯮ��㥬 ����ୠ⨢�� ����
    set mkvmerge_path="%mkvmerge_megui_path%"
  )
)

rem �஢�ઠ ������ 㦥 ��⮢��� 䠩��
if exist "%dir_name_output%%file_name%" (
  rem ����饭�� �� �訡��
  set "error=������ 䠩� 㦥 �������! %dir_name_output%%file_name%"
  goto error
)

rem �஢�ઠ ������ ��室���� ����� 䠩��
if not exist "%dir_name%%video_file_name%" (
  rem ����饭�� �� �訡��
  set "error=���� �� ����� 䠩�� 㪠��� �� ��୮! %dir_name%%video_file_name%"
  goto error
)


rem �������� ����ன�� mkvmerge
set "mkvmerge_global_options=--default-language "eng" --disable-track-statistics-tags"


rem ����ன�� �����
set "mkvmerge_video_fps="
if defined video_fps (
  set "mkvmerge_video_fps=--default-duration %video_track_id%:%video_fps%"
)

set "mkvmerge_video_track=--no-audio --no-subtitles --no-buttons --no-track-tags --no-chapters --no-attachments --no-global-tags %mkvmerge_video_fps% --language "%video_track_id%:%video_track_lang%" --track-name "%video_track_id%:%video_track_name%"  %video_file_name%" 


rem ### �㤨�
set mkvmerge_audio_tracks=

rem ����ன�� ��ࢮ� ��㪮��� ��஦��. ��⠭������ �� 㬮�砭��.
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


rem ### ������
set mkvmerge_subtitles_tracks=

rem ����ன�� ��ࢮ�� 䠩�� ����஢.
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

rem ### ����
set mkvmerge_attaches=

rem ����ன�� ��ࢮ�� 䠩�� ����஢.
if defined attach_file_name[1] (
  if exist "%dir_name%%attach_file_name[1]%" (
    set "mkvmerge_attaches=--attachment-mime-type %attach_mime_type[1]% --attach-file %attach_file_name[1]%"
  )
)

rem ### �����
set mkvmerge_chapters=

rem ����ன�� 䠩�� ����.
if defined chapters_file_name (
  if exist "%dir_name%%chapters_file_name%" (
    set "mkvmerge_chapters=--chapters %chapters_file_name%"
  )
)

rem ���������� ��ப� ��� mkv
set mkvmerge_final_command="%mkvmerge_path%" %mkvmerge_global_options% --output "%dir_name_output%%file_name%" --title "%movie_name%" %mkvmerge_video_track% %mkvmerge_audio_tracks% %mkvmerge_subtitles_tracks% %mkvmerge_attaches% %mkvmerge_chapters%

echo �������� 䠩�� %dir_name_output%%file_name%

echo %mkvmerge_final_command% 1> "%~n0 log.txt"

rem �믮��塞 �������� ��ᨭ��
%mkvmerge_final_command% 1>> "%~n0 log.txt"

goto final

:error
echo %error%
pause

:final
