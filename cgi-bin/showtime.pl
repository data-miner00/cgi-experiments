#!/usr/bin/perl
use strict;
use CGI;

my $cgi = new CGI;

print $cgi->PrintHeader();
my $now = localtime;

print <<END_HTML;
<html>
  <head>
    <title>Timenow</title>
  </head>
  <body>
    <h1>Time</h1>
    <p>The time is $now</p>
  </body>
</html>
END_HTML
