mkdir bin

mkdir tevianDLL
cd tevianDLL
git init
git clone https://github.com/SHK24/tevianDLL
mkdir cmake_temp
cd cmake_temp
cmake -G "MinGW Makefiles" ../tevianDLL
mingw32-make

cd ../../
copy .\tevianDLL\cmake_temp\bin\libtevianDLL.dll .\bin\libtevianDLL.dll

rd /Q /S .\tevianDLL\cmake_temp

mkdir tevianConsole
cd tevianConsole

git init
git clone https://github.com/SHK24/tevianConsole
mkdir cmake_temp
copy ..\bin\libtevianDLL.dll .\cmake_temp\libtevianDLL.dll
cd cmake_temp
cmake -G "MinGW Makefiles" ../tevianConsole
mingw32-make
cd ../../
copy .\tevianConsole\cmake_temp\bin\tevianConsole.exe .\bin\tevianConsole.exe

rd /Q /S .\tevianConsole\cmake_temp

mkdir tevianGUI
cd tevianGUI

git init
git clone https://github.com/SHK24/tevianGUI
mkdir cmake_temp
copy ..\bin\libtevianDLL.dll .\cmake_temp\libtevianDLL.dll
cd cmake_temp
cmake -G "MinGW Makefiles" ../tevianGUI
mingw32-make
cd ../../
copy .\tevianGUI\cmake_temp\bin\tevianGUI.exe .\bin\tevianGUI.exe

rd /Q /S .\tevianGUI\cmake_temp

mkdir .\bin\platforms
copy .\redist\platforms\*.* .\bin\platforms\*.*
copy .\redist\*.* .\bin\*.*
