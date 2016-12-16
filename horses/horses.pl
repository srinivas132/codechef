#!/depot/perl-5.8.3/bin/perl

use strict;
use warnings;

my @output;
chomp ( my $testcount = <STDIN> );
while ( $testcount-- > 0 ) {
    chomp( my $horsecount = <STDIN> );
    chomp( my $skill = <STDIN> );
    my @skills = split /\s/, $skill;
    @skills = sort {$a <=> $b} @skills;
    my $mindiff = $skills[$#skills];
    for ( my $i = 1; $i < scalar(@skills); $i++ ) {
        if ( $skills[$i] - $skills[$i-1] < $mindiff ) {
            $mindiff = $skills[$i] - $skills[$i-1];
        }
    }
    push @output, $mindiff;
}
print "$_\n" foreach ( @output );
