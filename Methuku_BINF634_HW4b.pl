#!/usr/bin/perl


use strict;
use warnings;
use BeginPerlBioinfo;


#
# Get sequence from fasta file
#
my $filename = '';


# the argument list should contain the file name
	die "Please provide name of DNA file (in FASTA format) -- usage: ex10.6.pl filename\n" if scalar @ARGV < 1;
	$filename = $ARGV[0];
	
my @file_data = get_file_data($filename);
my $sequence = extract_sequence_from_fasta_data(@file_data);

#
# Get count of tetramers
#
my $size = 4;
my %index = mercount($size,$sequence);

#
# Sort the keys by the index, and output results
#
my @sortedkeys = sort {$index{$b} <=> $index{$a}} keys %index;

foreach my $key (@sortedkeys) {
	print "$key ", $index{$key}, "\n";
}

exit;

################################################################################
# Subroutines
################################################################################
# mercount
#  - count all "mers" - subsequences of specified size - in a sequence
#
sub mercount {
	my($size, $seq) = @_;

	my %index = ();

	# Iterate through each subsequence
	for(my $i=0 ; $i < length($seq)-3 ; ++$i) {

		my $mer = substr($seq, $i, $size);

		if(defined $index{$mer}) 
		{
			$index{$mer}++;
		}
		else
		{
			$index{$mer} = 1;
		}
	}

	return %index;
}
