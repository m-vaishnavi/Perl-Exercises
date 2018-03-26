############################################################################################
############################################################################################
#Exercise 7.2

use warnings;
use strict;
my $user_guess = '';
my $base = '';
my $count = 0;
srand(time|$$);

print "Random nucleotide selected.\n\n";
sleep 1;

$base = randomnucleotide();

while (!$count) 
{
		print "Guess the random nucleotide selected: ";
        chomp ($user_guess = <STDIN>);

if (uc $user_guess eq $base) 
{
		print "Correct!\n\n";
        $count = 1;
}
 else 
{
		print "Wrong! Try again.\n"
}
}

#Subroutine

sub randomnucleotide {
my(@nucleotides) = ('A','G','C','T');
return $nucleotides[int(rand @nucleotides)];
}
############################################################################################
#Exercise 7.3

use warnings;
use strict;
my $input_seq = '';
my @input_seq = ();
srand (time|$$);
print "Enter input sequence: ";
chomp ($input_seq = <STDIN>);
@input_seq = split ('', $input_seq);
print "Input sequence:   @input_seq\n";
print 'Shuffled input sequence: '.&shuffle(@input_seq), "\n"; 

#Subroutine

sub shuffle {
	my(@input_seq) = @_;
	my $output_seq = '';
	while (@input_seq) 
	{	
	$output_seq .= splice (@input_seq, (int rand(@input_seq)), 1)." ";
	}
	return $output_seq;
}
############################################################################################
############################################################################################