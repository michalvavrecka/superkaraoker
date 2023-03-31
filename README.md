[![Generic badge](https://img.shields.io/badge/OS-Linux,Win-green.svg)](https://shields.io/)
[![Generic badge](https://img.shields.io/badge/Computation-GPU-green.svg)](https://shields.io/)
[![Generic badge](https://img.shields.io/badge/Language-Python-green.svg)](https://shields.io/)
[![Generic badge](https://img.shields.io/badge/Maintained-Yes-green.svg)](https://shields.io/)

# Superkaraoker

Automatic karaoke generator based on recent neural nets. Converts any youtube link to music video with extracted vocals while hardcode big subtitles. It works in any language (autodetection).


## Installation

`git clone https://github.com/michalvavrecka/superkaraoker.git`

`cd superkaraoker`

`sudo chmod +ax ./superkaraoker`

`sudo chmod +ax ./multikaraoker`

`pip install -r requierements.txt`

`sudo apt install ffmpeg`

You can check original and karaoke folders for the example with non-copyright music.


## Requirements

FFmpeg runs on CPU but GPU is recommended.
Spleeter runs on CPU but GPU version is faster.
Whisper and Whisperx requires at least 2GB VRAM for smallest model, 6GB VRAM for medium model. For the best results 12GB GPU is recommended.

## Usage

Convert one song


`./superkaraoker https://youtu.be/fUkBPG6viPI Mindslip_Broken_picture_frames`


Convert multiple songs


`./multikaraoker mysongs.txt`


## Output

See original folder for the video with original song with hardcoded subtitles. The karaoke song without vocals is in karaoke folder.




https://user-images.githubusercontent.com/16919032/229085294-edb4509e-deeb-4b0b-b43b-e22c81c7268a.mp4



