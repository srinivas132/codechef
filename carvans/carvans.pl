#!/usr/bin/perl
#/depot/perl-5.8.3/bin/perl

use strict;
use warnings;

my @maxspeeds;
chomp(my $inputs = <STDIN>);
while ( $inputs-- > 0 ) {
    chomp(my $carcount = <STDIN>);
    chomp(my $carspeed = <STDIN>);
    my @carspeeds = split /\s/, $carspeed;
    my $maxspeed = $carspeeds[0];
    my $maxspeedcount = 1;
    shift @carspeeds;
    foreach my $speed ( @carspeeds ) {
        if ( $speed <= $maxspeed ) {
            $maxspeed = $speed;
            $maxspeedcount++;
        }
    }
    push @maxspeeds, $maxspeedcount;
}
print "$_\n" foreach ( @maxspeeds );
