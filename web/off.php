<?php
$a = shell_exec("sudo /home/pi/disableusb.sh 2>&1");

#echo $a;



header("Location: http://" . $_SERVER['HTTP_HOST'] . "/light/");
header("Content-Type: text/plain");

#http_response_code(200);

echo 'Execution Successful';
die();
