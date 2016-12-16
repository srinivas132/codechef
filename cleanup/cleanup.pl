#!/depot/perl-5.8.3/bin/perl

use strict;
use warnings;

my @output;
chomp( my $testcount = <STDIN> );
while ( $testcount-- > 0 ) {
    chomp( my $input = <STDIN> );
    my ( $total, $compcount ) = split /\s/, $input;
    chomp ( my $comp = <STDIN> );
    my @completed = split /\s/, $comp;
    my $job = 1;
    my @chef;
    my @asst;
    for ( my $i = 1; $i <= $total; $i++ ) {
        unless ( grep  "$i" eq $_, @completed ) {
            if ( $job ) {
                push @chef, $i;
                $job = 0;
            } else {
                push @asst, $i;
                $job = 1;
            }
        }
    }
    my ($chef_string, $asst_string) = ('', '');
    $chef_string = join (' ', @chef);
    $asst_string = join (' ', @asst);
    push @output, ($chef_string, $asst_string);
}
foreach my $line ( @output ) {
    print "$line\n";
}
