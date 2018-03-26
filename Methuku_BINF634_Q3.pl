#!/usr/bin/perl -w

use warnings;
use strict;

print "\nEnter data set size:";

my $size = <STDIN>;
chomp($size);

srand(0);
my @results = box_muller($size);

print "\nThe sample data set for input size '$size' is :\n @results \n\n";

exit;

# Sub routine to return a sample data set of size 'N' using Box-Muller transformation.

sub box_muller {

        my($size) = @_;
        my @output;
        my $pi = 3.1416;
        my $u1;
        my $u2;
        my $z;

        for(my $i=0; $i<$size; $i++) 
		{
                $u1 = rand(1);
                $u2 = rand(1);
                $z = sqrt(-2 * log($u1)) * cos(2*$pi*$u2);
                push(@output,$z);
        }
        return @output;
}