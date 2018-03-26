#!/usr/bin/perl

# Exercise 12.6


`perl ./run_blast_remote.pl -db nr -prog blastn sample.fasta`;

wait_the_required_amount_of_time('.blastn2.nr.temp.html');

`perl ./retrieve_blast.pl .blastn2.nr.temp.html`;

print "The output is in the files sample_BLASTN.txt and sample_BLASTN.html\n";

# 
# The NCBI output suggests how long to wait before the results will be ready.
#
sub wait_the_required_amount_of_time {
	my($file) = '.blastn2.nr.temp.html';

	open(OUTFILE, $file) or die "Cannot open $file\n";

	my($html) = join('',<OUTFILE>);

	close (OUTFILE);

	$html =~ /The results are estimated to be ready in (\d+) seconds/si;
	my($seconds) = $1;
	# just to be on the safe side
	$seconds += 5;

	$| = 1;  # print immediately (otherwise the "sleep" might delay the print output)
	print "Waiting $seconds seconds ...";
	sleep($seconds);
	print "\n";
}
