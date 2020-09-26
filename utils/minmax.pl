#!/usr/bin/perl

use List::Util qw(min);
use List::Util qw(max);

$min_x = 99999;
$max_x = -99999;
$min_y = 99999;
$max_y = -99999;
while (<STDIN>) {
  chop;
  if (!/[0-9]/) {
        next;
  }
  ($dat,$junk) = split(/\./);
  ($zoom,$x,$y) = split(/_/,$dat);
  $min_x = min($min_x,$x);
  $min_y = min($min_y,$y);
  $max_x = max($max_x,$x);
  $max_y = max($max_y,$y);
}
print "$zoom: $min_x $max_x $min_y $max_y\n"

