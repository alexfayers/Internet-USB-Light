<?php
function getLightStatus() {
    $a = shell_exec("if sudo uhubctl | grep 0000 > /dev/null; then echo 'off'; else echo 'on'; fi 2>&1");

    return $a;
}

echo getLightStatus();