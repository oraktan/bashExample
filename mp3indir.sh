#!/bin/bash

# MP3 dosyalarını saklamak için klasör oluştur
mkdir -p ~/indirilenMP3

menu(){
    clear
    echo "------------------"
    echo "     MAIN MENU        "
    echo " "
    echo " "
    echo -n "İndirmek istediğiniz şarkının adını yazınız (birden fazla kelime olabilir) > "
    read -r arama
}

search_and_download(){
    # YouTube'da arama yap ve ilk sonucu MP3 olarak indir
    yt-dlp -x --audio-format mp3 "ytsearch:$arama" -o "~/indirilenMP3/%(title)s.%(ext)s" --max-downloads 1
}

menu
search_and_download

