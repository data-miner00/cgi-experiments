#!/usr/bin/env perl
use strict;
use warnings;
use CGI;

my $cgi = CGI->new();

print $cgi->header( -type => 'image/jpg' );

open my $img, '<', '/home/mumk/Pictures/379802.jpg';
while (<$img>) { print }
