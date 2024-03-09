#!/usr/bin/perl
use strict;
use warnings;

print "Content-type: text/html\n\n";
print "<h1>Request Variables</h1>";

foreach my $key (sort keys %ENV) {
    print "<p>$key --> $ENV{$key}</p>";
}

foreach (sort keys %ENV) {
   print "<b>$_</b>: $ENV{$_}<br>\n";
}
