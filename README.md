[![Generic badge](https://img.shields.io/badge/OS-Linux,Win-green.svg)](https://shields.io/)
[![Generic badge](https://img.shields.io/badge/Computation-GPU-green.svg)](https://shields.io/)
[![Generic badge](https://img.shields.io/badge/Language-Python-green.svg)](https://shields.io/)
[![Generic badge](https://img.shields.io/badge/Maintained-Yes-green.svg)](https://shields.io/)

# Superkaraoker 0.0.1

Automatic karaoke generator based on recent neural nets. Converts any youtube link to music video with extracted vocals while hardcode big subtitles. Multilingual vocal autodetection.


## Installation

### Linux

Clone the repository and make output directories:
```
git clone https://github.com/michalvavrecka/superkaraoker.git
cd superkaraoker
mkdir karaoke & mkdir output & mkdir original
```

Install dependencies and make shell scripts executable:
```
pip install -r requirements.txt
sudo apt install ffmpeg
sudo chmod +ax ./superkaraoker
sudo chmod +ax ./multikaraoker
```

### Mac

Clone the repository and make output directories:
```
git clone https://github.com/michalvavrecka/superkaraoker.git
cd superkaraoker
mkdir karaoke & mkdir output & mkdir original
```

Install dependencies and make shell scripts executable:
```
pip install -r requirements.txt
brew install ffmpeg
chmod 755 ./superkaraoker
chmod 755 ./multikaraoker
```

### Windows

Install Python from store, download and install FFmpeg then:

`git clone https://github.com/michalvavrecka/superkaraoker.git`

`cd superkaraoker`

`pip install -r requirements.txt`

Then you can try superkaraoker.bat



## Requirements

FFmpeg runs on CPU but GPU is recommended.

Spleeter runs on CPU but GPU version is faster.

Whisper and Whisperx requires at least 2GB VRAM for smallest model, 6GB VRAM for medium model. For the best results 12GB GPU is recommended.

## Usage

Convert one song


`./superkaraoker https://youtu.be/fUkBPG6viPI Mindslip_Broken_picture_frames`


Convert multiple songs


`./multikaraoker mysongs.txt`


## Example

Karaoke (copyright free music video) 


https://user-images.githubusercontent.com/16919032/229085294-edb4509e-deeb-4b0b-b43b-e22c81c7268a.mp4




Original video with hardcoded subtitles (copyright free music video) 



https://user-images.githubusercontent.com/16919032/229086837-7cf86220-c6e8-4f99-9d2f-82653a87fa00.mp4



## Modification

If you have small GPU change the model size in superkaraoker script to --model medium (6GB) or --model small (2GB)

If you want to force the language add --language parameter to whisper command inside superkaraoker


## TODO


Automatic subtitles grammar correction

Better subtitles timing with whisperx (work only for specific languages)


## License

Copyright © 2023 [Michal Vavrecka](https://kognice.wixsite.com/vavrecka).  Released under the MIT License.  


