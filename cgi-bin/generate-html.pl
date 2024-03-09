#!/usr/bin/perl
use strict;
use CGI;

my $cgi = CGI->new;

print $cgi->header,
      $cgi->start_html,
      "Hello",
      $cgi->end_html;

exit;

