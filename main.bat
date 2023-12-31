@echo off
echo        ... .. .. ... .. .. ....:^~7!~^:. .. .. ... .. .. ... .. .. ... .. .. ... .. .. ... .. .. ... .. ...   ______ __  __ __     ______   ______ ____   __  ___ __  ___ __  __ _   __ ____ ______ ___   ______ ____ ____   _   __ _____   
echo        .......................:~7777777!!~:................................................................  / ____// / / // /    / ____/  / ____// __ \ /  |/  //  |/  // / / // | / //  _// ____//   | /_  __//  _// __ \ / | / // ___/     
echo        .........................^7777777777!^:............................................................. / / __ / / / // /    / /_     / /    / / / // /|_/ // /|_/ // / / //  |/ / / / / /    / /| |  / /   / / / / / //  |/ / \__ \     
echo        .................... .:^~!7777777777777!~^:.... .. ................................................./ /_/ // /_/ // /___ / __/    / /___ / /_/ // /  / // /  / // /_/ // /|  /_/ / / /___ / ___ | / /  _/ / / /_/ // /|  / ___/ /     
echo        .................~!~~~77777777777777777777!!!!!!~~^:................................................\____/ \____//_____//_/       \____/ \____//_/  /_//_/  /_/ \____//_/ |_//___/ \____//_/  |_|/_/  /___/ \____//_/ |_/ /____/      
echo        .................~!777777777777777777777777777777777!:..............................................
echo        ................. :~7777777777777777777777777777777777~:............................................   _____  ____   ___     ____   __ __    ___    __  __ ______ ____     ______ ___    _____  __ __  ______ ____                    
echo        ....................^!777777777777777777777777777777777!^............... ...........................  / ___/ / __ \ /   |   / __ \ / //_/   /   |  / / / //_  __// __ \   /_  __//   |  / ___/ / //_/ / ____// __ \                   
echo        .................... .!7777777777777777777777777777777777~.:~......... :~~..........................  \__ \ / /_/ // /| |  / /_/ // ,<     / /| | / / / /  / /  / / / /    / /  / /| |  \__ \ / ,<   / __/  / /_/ /                   
echo        .......................!7777777777777777777777777777777777!^7:........~77~ ......................... ___/ // ____// ___ | / _, _// /| |   / ___ |/ /_/ /  / /  / /_/ /    / /  / ___ | ___/ // /| | / /___ / _, _/                    
echo        ...................... :~!77777777777777777777777777777777777^.....:^!777!~:... ..................../____//_/    /_/  |_|/_/ |_|/_/ |_|  /_/  |_|\____/  /_/   \____/    /_/  /_/  |_|/____//_/ |_|/_____//_/ |_|                     
echo        ........................ .^!7777777777777777777777777777777777!!!!!777777777!~~~:...................
echo        ............................~7777777777777777777777777777777777777777777777777777~:.................
echo        ............................^77777777777777777777777777777777777777777777777777777~.................
echo        ........................... :!777777777777777777777777777777777777777777777777777~..................
echo        ..............................^!77777777777777777777777777777777777777777777777!^...................
echo        ................................:~777777777777777777777777777777777777777777777:....................
echo        ..................................:77777777777777777777777777777777777777777!!~.....................
echo        ...................................^777777777777777777777777777777777777777^........................
echo        ....................................:~777777777777777777777777777777777!:::.........................
echo        ......................................^!77777777777777777777777777!!~~^:............................
echo        ...................................... .!77777777777777777777777!:... ..............................
echo        ........................................^7777777777777777777!!~^....................................
echo        .........................................!77777777777777~^::.. .....................................
echo        .........................................:77777777!~^^^.............................................
 echo        ... .. .. ... .. .. ... .. .. ... .. .. .~!~~:.::...  .. .. ... .. .. ... .. .. ... .. .. ... .. ..

color 40

setlocal

:loop
rem Get the current time
for /f "tokens=1,2 delims=:" %%H in ("%time%") do (
    set /a "hours=%%H"
    set /a "minutes=%%I"
)

rem Check if it's 12 am or 12 pm
if %hours% EQU 0 (
    set "ampm=am"
) else if %hours% EQU 12 (
    set "ampm=pm"
) else (
    set "ampm="
)

rem Check if it's time to run the program
if "%ampm%" EQU "am" if %minutes% EQU 0 (
    call :runProgram
) else if "%ampm%" EQU "pm" if %minutes% EQU 0 (
    call :runProgram
)

rem Wait for 1 minute before checking the time again
ping -n 61 127.0.0.1 >nul

goto loop

:runProgram
rem Open the program
start "" "C:\path\to\program.exe"

rem Log the operation in debug.txt
echo [%date% %time%] Program opened successfully >> debug.txt

goto :eof
