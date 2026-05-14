#!/usr/bin/env perl
$latex = 'uplatex -synctex=1 -kanji=utf8 -halt-on-error -file-line-error %O %S';
$latex_silent = 'uplatex -synctex=1 -kanji=utf8 -halt-on-error -interaction=batchmode';
$lualatex = 'lualatex -synctex=1 -halt-on-error %O %S';
$bibtex = 'upbibtex';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendex %O -o %D %S';
$max_repeat = 6;
$pdf_mode = 3;   