#######################################################################
#######################################################################
#Excercise 6.1
print"\nConcatenation of 2 DNA strings using subroutine:\n\n";
$dna= "AAGCTGTTCC";
print "DNA string 1 is: $dna\n";
print "DNA string 2 is: GGGG\n";
$l_dna= addGGGG($dna);
print "The concatenated DNA string is: $l_dna\n\n";
exit;

sub addGGGG {
my($dna)= @_;
$dna.='GGGG';
return $dna;
}
#######################################################################
#Exercise 6.2
my $DNA=0;
my $A="A";
my $T="T";
my $G="G";
my $C="C";
my $Per_A=0;
my $Per_T=0;
my $Per_G=0;
my $Per_C=0;

print "Enter an input DNA sequence: ";
$DNA=<STDIN>;
chomp ($DNA);

$Per_A= percent($DNA, $A);
$Per_T= percent($DNA, $T);
$Per_G= percent($DNA, $G);
$Per_C= percent($DNA, $C);

print "The percentage of each nucloetide in the DNA sequence is:\n";
print "A=$Per_A% \n";
print "T=$Per_T% \n";
print "G=$Per_G% \n";
print "C=$Per_C% \n\n";

exit;

sub percent {
my($DNA,$base)= @_;
my $count = 0;
my $count_A = 0;
my $count_T = 0;
my $count_G = 0;
my $count_C = 0;
my $length_DNA = 0;
my $length_DNA = length($DNA);

if($length_DNA==0)
{
return 0;
}
$count=(eval($DNA=~ tr/$base//));
$count=0;
while($DNA=~/$base/g){$count++}
my $value =(int(100 * ($count / $length_DNA)));
return $count;
return $value;
}
#######################################################################
#Exercise 6.2 (Revised)
my $dna=0;
my $A="A";
my $T="T";
my $G="G";
my $C="C";
my $Per_A=0;
my $Per_T=0;
my $Per_G=0;
my $Per_C=0;

print "\nEnter an input DNA sequence: ";
$dna=<STDIN>;
chomp ($dna);

my($num_of_As) = count_A ($dna);
my($num_of_Gs) = count_G ($dna);
my($num_of_Ts) = count_T ($dna);
my($num_of_Cs) = count_C ($dna);

print "\nThe DNA sequence $dna has:\n";
print "A\'s = $num_of_As";
print "\nG\'s = $num_of_Gs";
print "\nT\'s = $num_of_Ts";
print "\nC\'s = $num_of_Cs\n";

$Per_A= percent($dna, $A);
$Per_G= percent($dna, $G);
$Per_T= percent($dna, $T);
$Per_C= percent($dna, $C);

print "\nThe percentage of each nucleotide in the DNA sequence is : ";
print "\nA= $Per_A% \n";
print "G= $Per_G% \n";
print "T= $Per_T% \n";
print "C= $Per_C% \n\n";

exit;

#Subroutine defined
sub count_A {
my($dna) = @_;
my($count) = 0;
$count = ( $dna =~ tr/Aa//);
    return $count;
 }

sub count_G {
my($dna) = @_;
my($count) = 0;
$count = ( $dna =~ tr/Gg//);
    return $count;
 }

sub count_T {
my($dna) = @_;
my($count) = 0;
$count = ( $dna =~ tr/Tt//);
    return $count;
 }

sub count_C {
my($dna) = @_;
my($count) = 0;
$count = ( $dna =~ tr/Cc//);
    return $count;
 }

 sub percent {
my($dna, $base)= @_;
my $count=0;
my $count_A=0;
my $count_G=0;
my $count_T=0;
my $count_C=0;
my $length_dna=0;
my $length_dna=length($dna);

if($length_dna==0)
{
return 0;
}
$count=(eval($dna=~ tr/$base//));
$count=0;
while($dna=~/$base/g){$count++}
my $value =(int(100*($count/$length_dna)));
return $count;
return $value;
}
#######################################################################
#######################################################################