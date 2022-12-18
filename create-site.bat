@echo off

set XAMPP_Home=G:/xampp

set /p siteName=Enter the name of the new site (e.g. newsite): 

set DocRoot=%XAMPP_Home%/htdocs/%siteName%

if not exist "%DocRoot%" mkdir "%DocRoot%"

echo ^<html^> > "%DocRoot%/index.html"
echo ^<head^>^<title^>%siteName%^</title^>^</head^> >> "%DocRoot%/index.html"
echo ^<body^> >> "%DocRoot%/index.html"
echo   ^<h1^>Welcome to %siteName%!^</h1^> >> "%DocRoot%/index.html"
echo ^</body^>^</html^> >> "%DocRoot%/index.html"

echo ^<VirtualHost *:80^> >> "%XAMPP_Home%/apache/conf/httpd.conf"
echo   ServerName %siteName%.local >> "%XAMPP_Home%/apache/conf/httpd.conf"
echo   DocumentRoot "%DocRoot%" >> "%XAMPP_Home%/apache/conf/httpd.conf"
echo   DirectoryIndex index.html index.php >> "%XAMPP_Home%/apache/conf/httpd.conf"
echo ^</VirtualHost^> >> "%XAMPP_Home%/apache/conf/httpd.conf"

echo 127.0.0.1 %siteName%.local >> "%SystemRoot%\System32\drivers\etc\hosts"

echo "You can now access the site at %siteName%.local."
echo "The directory for the new site is: %DocRoot%"
echo "You must restart the Apache server for the new site to work."

pause