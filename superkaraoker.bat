@echo off

echo "Downloading file from Youtube"
echo "%~1"
yt-dlp "-f" "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]\best" "%~1" "-o" "%~2.mp4"
echo "Extracting audio from video"
echo "%~2"
ffmpeg "-hide_banner" "-loglevel" "error" "-i" "%~2.mp4" "-c:a" "libmp3lame" "-qscale:a" "1" "%~2.mp3"
echo "Extracting voice from audio"
echo "%~2"
spleeter "separate" "-p" "spleeter:2stems" "-o" "output" "%~2.mp3"
COPY  "./%~2.mp4" "./output/%~2"
cd "./output/%~2"
whisper "%CD%\vocals.wav" "--model" "large"
echo "Creating soft subtitles to video"
ffmpeg "-hide_banner" "-loglevel" "error" "-i" "%~2.mp4" "-i" "accompaniment.wav" "-i" "vocals.vtt" "-map" "0:v" "-map" "1:a" "-map" "2" "-metadata:s:s:0" "language=cs" "-c:v" "copy" "-c:a" "aac" "-c:s" "mov_text" "%~2-srt.mp4"
echo "Creating karaoke video"
ffmpeg "-hide_banner" "-loglevel" "error" "-i" "%~2-srt.mp4" "-vf" "subtitles=vocals.srt:force_style='Fontsize=34,Outline=3'" "%~2-karaoker.mp4"
echo "Creating original video with hardcoced subtitles"
ffmpeg "-hide_banner" "-loglevel" "error" "-i" "%~2.mp4" "-vf" "subtitles=vocals.srt:force_style='Fontsize=34,Outline=3'" "%~2-original.mp4"
echo "Cleaning up the mess"
COPY  "./%~2-karaoker.mp4" "../../karaoke/%~2-karaoker.mp4"
COPY  "./%~2-original.mp4" "../../original/%~2-original.mp4"
cd "%CD%\..\.."
DEL  "%~2.mp4"
DEL  "%~2.mp3"
DEL /S "output/%~2"
echo "Karaoke successfuly created"