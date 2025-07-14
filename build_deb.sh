#!/bin/bash
set -e
PKG=catnip
VER=4.7
BUILD=catnip_deb_build

rm -rf $BUILD
mkdir -p $BUILD/DEBIAN $BUILD/usr/bin $BUILD/usr/share/applications $BUILD/usr/share/man/man1

cat > $BUILD/DEBIAN/control <<EOF
Package: catnip
Version: $VER
Section: utils
Priority: optional
Architecture: all
Depends: bash, hashcat, john, coreutils
Maintainer: You <you@example.com>
Description: CatNip NTLM/Password Cracking Suite
EOF

cp catnip $BUILD/usr/bin/catnip
chmod 755 $BUILD/usr/bin/catnip

cat > $BUILD/usr/share/applications/catnip.desktop <<EOF
[Desktop Entry]
Name=CatNip
Exec=catnip
Icon=utilities-terminal
Type=Application
Terminal=true
Categories=Utility;Security;
EOF

cat > $BUILD/usr/share/man/man1/catnip.1 <<EOF
.TH catnip 1 "July 2025" "CatNip 4.7"
.SH NAME
catnip \- Password cracking suite using Hashcat/John with dashboards
EOF
gzip $BUILD/usr/share/man/man1/catnip.1

dpkg-deb --build $BUILD
mv $BUILD.deb catnip_${VER}-1_all.deb
