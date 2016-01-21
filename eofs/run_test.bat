:: Run the test suite in its own directory.
::

mkdir eofs-tests
cd eofs-tests
if %ERRORLEVEL% GEQ 1 exit 1
nosetests -sv eofs
set stat=%ERRORLEVEL%
cd ..
rmdir /s /q eofs-test
exit %ERRORLEVEL%
