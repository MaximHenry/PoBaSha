If not exist %cd%\Log mkdir %cd%\Log

If not exist %cd%\Server mkdir %cd%\Server



set scriptpath=%cd%

set logpath=%scriptpath%\Log

set targetroot=%scriptpath%\Server

ren S_Template.cmd NoExecute_S_Template.cmd

ren S_Template_Debug.cmd NoExecute_S_Template_Debug.cmd

For %%n in (S_*.cmd) do call %%n %scriptpath% %logpath% %targetroot% %%n

ren NoExecute_S_Template.cmd S_Template.cmd

ren NoExecute_S_Template_Debug.cmd S_Template_Debug.cmd

set scriptpath=

set logpath=

set targetroot=

