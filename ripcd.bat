@ECHO OFF

    setlocal ENABLEDELAYEDEXPANSION

    SET /a x=0

    FOR /R D:\ %%G IN (*.cda) DO (CALL :SUB_VLC "%%G")
    GOTO :eof

    :SUB_VLC
    call SET /a x=x+1

    ECHO Transcoding %1
    REM Here's where the actual transcoding/conversion happens. The next line
    REM fires off a command to VLC.exe with the relevant arguments:
    CALL "C:\Program Files\VideoLAN\VLC\vlc" -I http cdda:///D:/ --cdda-track=!x! :sout=#transcode{vcodec=none,acodec=mp3,ab=128,channels=2,samplerate=44100}:std{access="file",mux=raw,dst="Track!x!.mp3"} --noloop vlc://quit

    :eof