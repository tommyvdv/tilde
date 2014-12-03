<?php
/**
 * Extract a single database dump from a 'mysqldump --all-databases' dump.
 *
 * Usage:
 *  $ php xdbdump.php <FILE_NAME_DATABASE_DUMP> <NAME_DATABASE>
 */


//define('MAX_LINE_LENGTH', 500);
define('REGEX_DB_NAME',  '/^--[\s]+Current Database:[\s]+`([a-zA-Z0-9_-]+)`/');


function usage() {
    $thisfile = str_replace(__DIR__."/", "", __FILE__);
    return "Usage:\n$ php $thisfile <FILE_NAME_DATABASE_DUMP> <NAME_DATABASE>\n";
}


// In case argc/v isn't registered by php.ini
$argv = $_SERVER['argv'];
$argc = $_SERVER['argc'];

if ($argc != 3) {
    echo usage();
    exit(1);
}

$fn_dump = $argv[1];
$dbname_to_look_for = $argv[2];

$start_outputting = false;
$fh = fopen($fn_dump, 'r');
while ($line = fgets($fh)) {
    if ($start_outputting) {
        echo $line;
    }
    // we have a line that denotes the start of a database dump
    // if we are already outputting, this means that we can stop
    // outputting and the database was found.
    if (preg_match(REGEX_DB_NAME, $line, $matches)) {
        if ($start_outputting) { break; }
        $dbname = $matches[1];
        if ($dbname == $dbname_to_look_for) {
            $start_outputting = true;
        }
    }
}
fclose($fh);

