#!/usr/bin/perl

use strict;
use warnings;
use CGI qw(:standard);
use CGI::Carp qw(fatalsToBrowser);

print "Content-Type: text/html\n\n";

#### Read form data
my $user = param('username');
my $item = param('item');
my $qty = param('quantity');
my $price = param('price');

#### Do the math
my $subtotal = $qty * $price;
my $tax = $subtotal * 0.07;
my $total = $subtotal + $tax;

#### display results
print "<h2>ECommerce platform</h2>";
print "<p>Hi $user, here is your order: </p>";
print "<p>Item ordered: $item, unit price: \$$price, quantity: $qty </p>";
print "<p>Subtotal: \$$subtotal </p>";
printf "<p>Sales tax: \$%.2f </p>", $tax;
