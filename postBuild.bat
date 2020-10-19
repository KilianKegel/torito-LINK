@echo off
echo ^    ^----------------------------- torito-LINK PostBuild -----------------------------
echo ^    ^%0 %1 %2
if not exist %1\tools mkdir %1\tools
echo ^    ^copy /y %2LINK.exe %1tools
copy /y %2LINK.exe %1tools