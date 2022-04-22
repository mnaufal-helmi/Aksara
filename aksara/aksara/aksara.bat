
tasklist /FI "IMAGENAME eq xampp_start.exe" | findstr /I "xampp_start.exe" && (
    taskkill /IM firefox.exe
	start D:\xampp\xampp_stop.exe
) || (
    start D:\xampp\xampp_start.exe
	
	
	echo Created By Masagi.inc 2018
	echo membuka browser
	
    start chrome.exe http://localhost/aksara
	start chrome.exe http://localhost/pamordesa
)
exit
