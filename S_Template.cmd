
rem The first four variables are initialized with the Script "BackupInit".

rem The Copy-Options of Robocopy can  be changed 
rem below "BEGIN OPTIONS".

rem NECESSARY:	Define Server, Share and Subshare
rem 		below "BEGIN DEFINE SERVER AND SHARE".

rem More Info in the Description File



set scriptpath=%1

set logpath=%2

set targetroot=%3

set logfilename=%4

set optlog=/LOG:%logpath%\%logfilename%.log


rem BEGIN OPTIONS

rem Change Options for your needs if necessary
rem Further Information see Description File

set optstd=/E /PURGE /COPY:DATS /R:0 /W:0

set optspc=

rem END OPTIONS



rem BEGIN DEFINE SERVER AND SHARE

rem Set Server, Sourceshare and if needed subshare

set sourcesrv=\\ExampleServer
set sourceshare=ExampleShare	
set subshare=ExampleSubShare


rem END DEFINE SERVER AND SHARE



set sourcepath=%sourcesrv%\%sourceshare%\%subshare%

set targetpath=%targetroot%\%sourcepath:~2%

robocopy.exe "%sourcepath%." "%targetpath%." %optstd% %optspc% %optlog%

attrib -H -S "%targetroot%\%sourcesrv:~2%\%sourceshare%"


set scriptpath=
set logpath=
set targetroot=
set logfilename=
set optlog=

set optstd=
set optspc=

set sourcesrv=
set sourceshare=
set subshare=
set sourcepath=
set targetpath=


