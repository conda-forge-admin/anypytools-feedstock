"%PYTHON%" setup.py install 

cd "%PREFIX%"
mkdir share\notebooks\AnyPyTools
cd share\notebooks\AnyPyTools
xcopy "%SRC_DIR%\Tutorial" . /S/Y/I

copy "%RECIPE_DIR%\AnyPyToolsTutorial.bat" "%SCRIPTS%\AnyPyToolsTutorial.bat"
cd "%PREFIX%"
mkdir Menu
copy "%RECIPE_DIR%\menu-windows-manual.json" "%PREFIX%\Menu\AnyPyToolsTutorial.json"
copy "%SRC_DIR%\anypytools.ico" "%PREFIX%\Menu\anypytools.ico"

cd "%SRC_DIR%"
