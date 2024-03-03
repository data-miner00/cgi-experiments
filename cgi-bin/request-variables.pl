#!/usr/bin/perl
use strict;
use warnings;

print "Content-type: text/html\n\n";
print "<h1>Request Variables</h1>";

foreach my $key (keys %ENV) {
    print "<p>$key --> $ENV{$key}</p>";
}

