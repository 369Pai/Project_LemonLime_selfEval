#!/usr/bin/bash

rm CMakeCache.txt
rm lemon
rm -rf AppImage

cmake . -DCMAKE_BUILD_TYPE=Release -GNinja 
ninja

mkdir -p AppImage/usr/bin
mkdir -p AppImage/usr/share/applications
mkdir -p AppImage/usr/share/icons

cp lemon AppImage/usr/bin/lemon
sed 's|Exec=lemon|Exec=usr/bin/lemon|g' ./assets/lemon-lime.desktop.in > AppImage/usr/share/applications/lemon-lime.desktop
cp ./assets/icons/lemon-lime.256.png AppImage/usr/share/icons/lemon-lime.png

./linuxdeployqt-continuous-x86_64.AppImage \
	AppImage/usr/share/applications/lemon-lime.desktop \
	-appimage