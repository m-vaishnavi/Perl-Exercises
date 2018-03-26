#!/usr/bin/perl
use strict;
use warnings;

{
	my %nucleotides = (
	'A' => 'Adenine',
	'C'=> 'Cytosine',
	'G' => 'Guanine',
	'T' => 'Thymine');
	
	print "Original hash values: ";
	foreach my $base (keys %nucleotides) {print $nucleotides{$base}, " "};
	print "\n\n";
	
	print "Subroutine called to add Uracil.  Hash passed by VALUE.\n";
	&hashbyvalue (%nucleotides);
	print "Nucleotides: ";
	foreach my $base (keys %nucleotides) {print $nucleotides{$base}, " "};
	print "\n\n";
	
	print "Identical subroutine to add Uracil.  Hash passed by REFERENCE.\n";
	&hashbyreference (\%nucleotides);
	print "Nucleotides: ";
	foreach my $base (keys %nucleotides) {print $nucleotides{$base}, " "};
	print "\n\n";
	
	exit;
}

sub hashbyvalue {
	my (%nucleotides) = @_;
	$nucleotides{'U'} = 'Uracil';
	return %nucleotides;
}

sub hashbyreference {
	my ($nucleotides) = @_;
	$$nucleotides{'U'} = 'Uracil';
	return %$nucleotides;
}