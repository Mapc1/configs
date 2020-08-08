mkdir -p ~/.local/share/applications

cp $PWD/magrtorrent.desktop ~/.local/share/applications/

gio mime x-scheme-handler/magnet magrtorrent.desktop
