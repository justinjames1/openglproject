cd opengl #incase some idiot trys compiling it outside of the directory.
echo installing dependencies
sudo apt install mingw-w64
echo compiling..
g++ main.cpp glad.c -I. -o linux_main.bin -lglfw -lGL -ldl #linux verison.
g++ main.cpp -o main_windows.exe -static-libgcc -static-libstdc++
echo Done!
