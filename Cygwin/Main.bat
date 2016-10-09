set TargetDir=${HOME}

set StartDirFile=.start-dir
set CygwinBin=%SystemDrive%\cygwin\bin
set MinTTY=%CygwinBin%\mintty.exe

set "Params= "
set Params=%Params% -p -4,-4
set Params=%Params% -i /Cygwin-Terminal.ico
@rem set Params=%Params% -l /var/log/mintty
set Params=%Params% -e /bin/bash
set Params=%Params% -c "echo ""%TargetDir%"" > ""${HOME}/%StartDirFile%"" ; /bin/zsh --login"

start "T" %MinTTY% %Params%
