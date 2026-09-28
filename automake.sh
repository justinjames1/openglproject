cd ~/openglproject
echo installing dependices..
sudo apt install mingw-w64
sudo apt install cmake
echo Done!
echo building......
cmake -S . -B build
cmake --build build
cd build
./openGLproject
