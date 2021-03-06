"
" Tests that can be run when a fresh vim instance is opened.
" :so ~/test.vim
" Useful for overall checking if a vim configuration change is working out ok.
"


" List of tests that must be run when sourcing this file.
" Each test is the main part of a function in this file, but without 'test#'
" prefix and '()' suffix.
let tests_to_run = [
            \'buffer_info'
            \]


" @param string[] list of tests to run.
"        Each test is the main part of a function in this file, but without
"        'test#' prefix and '()' suffix.
function s:run_tests(tests)
    for test in a:tests
        exec "call test#" . test . '()'
    endfor
endfunction


" 2014-11-04 01:55:58
function test#TddRunTestExecutesCorrectly()
    :cd ~/Projects/Knife/
    :e Tests/DictTest.php
    :TddRunTest
endfunction


" 2014-11-04 23:56:47
function test#buffer_info()
    :Info
    :sleep 3
    :e ~/test.vim
    :Info
endfunction

call s:run_tests(tests_to_run)
