#!/usr/bin/perl
use strict;
use warnings;

{
	# declare matrix arrays
	my @M1 = ();
	my @M2 = ();
	my @M3 = ();
	
	# initialize the parametes for the 2-dimensional array
	my $rows = 3;
	my $cols = 3;
	my $val = 1;
	
	# intitialize matrix 1
	for (my $i=0; $i < $rows; $i++) {
    for (my $j=0; $j < $cols; $j++) {
	   $M1[$i][$j] = $val;
	   $val++
    	}
	}
	
	#initialize matrix 2 - Identity Matrix
	$M2[0][0]=1; $M2[0][1]=0; $M2[0][2]=0;
	$M2[1][0]=0; $M2[1][1]=1; $M2[1][2]=0;
	$M2[2][0]=0; $M2[2][1]=0; $M2[2][2]=1;
	
	print "Matrix 1:\n";
	&print_2Darray (@M1);
	print "\n\n";
	print "Matrix 2:\n";
	&print_2Darray (@M2);
	print "\n\n";
	print "Element by element multiplication of M1 and M2 (M1 * M2):\n";
	&mult_mat (\@M1, \@M2, \@M3);
	&print_2Darray (@M3);
	exit;
}

sub print_2Darray {
    my (@a) = @_;
    my $rows = scalar @a;
    my $cols = scalar @{$a[0]};
    for (my $i=0; $i < $rows; $i++) {
	   for (my $j=0; $j < $cols; $j++) {
	     printf "%5d ", $a[$i][$j];
	   }
	   print "\n"; # newline after each row
	  
    }
}

sub mult_mat {
	my ($M1, $M2, $M3) = @_;
	my $rows = 3;
	my $cols = 3;
	for (my $i=0; $i < $rows; $i++) {
		for (my $j=0; $j < $cols; $j++) {
		$$M3[$i][$j] = $$M1[$i][$j] * $$M2[$i][$j];
		}
	}
}
