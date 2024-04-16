# https://github.com/transmission/transmission/blob/main/docs/Building-Transmission.md
# 1GB is enough to compile on intel, compilation for ARM will need 2GB of RAM 
sudo yum install cmake gcc gcc-c++ m4 make automake libtool gettext openssl-devel git libcurl-devel pkgconf-pkg-config intltool -y
git clone --recurse-submodules https://github.com/transmission/transmission Transmission
cd Transmission
cmake -B build -DCMAKE_BUILD_TYPE=Release
cd build
cmake --build .
sudo cmake --install .
mkdir ~/Downloads
transmission-daemon
# Adding a torrent
transmission-remote -a "magnet:?xt=urn:btih:857A1347AEB7AE2CE0569A5CAC9E0CA92E51279A&dn=amigavision-2024&tr=http%3a%2f%2fbt1.archive.org%3a6969%2fannounce&tr=http%3a%2f%2fbt2.archive.org%3a6969%2fannounce&tr=wss%3a%2f%2fwstracker.online&ws=https%3a%2f%2farchive.org%2fdownload%2f&ws=http%3a%2f%2fia600309.us.archive.org%2f33%2fitems%2f&ws=http%3a%2f%2fia800309.us.archive.org%2f33%2fitems%2f"
# Viewing status
transmission-remote -l

