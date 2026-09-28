cd ~/openglproject
sudo apt install mingw-w64
sudo apt install cmake
echo building......
cmake -S . -B build
cmake --build build
