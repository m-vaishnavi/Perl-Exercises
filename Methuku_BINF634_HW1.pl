#############################################################################################################################
#############################################################################################################################
# Exercise 4.3(a) 
#Path- /userhomes/students/vmethuku/public_html/fall17/binf634/bookcode/examples/ex4.3.a.pl

print 'Printing DNA in lowercase (acgt) using tr/// function:' . "\n\n";
$DNA= 'AGTCAAGGTTCCAGTC';
print 'The original DNA sequence is:' . "\n\n";
print "$DNA" . "\n\n";
$DNA1=$DNA;
$DNA1=~ tr/ATGC/atgc/;
print 'Here is the DNA sequence in lowercase:' . "\n\n";
print $DNA1 . "\n\n";
exit;
#############################################################################################################################
# Exercise 4.3(b)
#Path- /userhomes/students/vmethuku/public_html/fall17/binf634/bookcode/examples/ex4.3.b.pl

print 'Printing DNA in uppercase (ACGT) using tr/// function:' . "\n\n";
$DNA= 'agtcggttaaccagtc';
print 'The original DNA sequence is:' . "\n\n";
print "$DNA" . "\n\n";
$DNA1=$DNA;
$DNA1=~ tr/atgc/ATGC/;
print 'Here is the DNA sequence in uppercase:' . "\n\n";
print $DNA1 . "\n\n";
exit;
#############################################################################################################################
# Exercise 4.4(a)
#Path- /userhomes/students/vmethuku/public_html/fall17/binf634/bookcode/examples/ex4.4.a.pl

print 'Printing DNA in lowercase (acgt) using string directive \L:' . "\n\n";
$DNA= 'AGTCAAGGTTCCAGTC';
print 'The original DNA sequence is:' . "\n\n";
print "$DNA" . "\n\n";
print 'Here is the DNA sequence in lowercase:' . "\n\n";
print "\L$DNA" . "\n\n";
exit;
#############################################################################################################################
# Exercise 4.4(b)
#Path- /userhomes/students/vmethuku/public_html/fall17/binf634/bookcode/examples/ex4.4.b.pl

print 'Printing DNA in uppercase (ACGT) using string directive \U:' . "\n\n";
$DNA= 'agtcaaggttccagtc';
print 'The original DNA sequence is:' . "\n\n";
print "$DNA" . "\n\n";
print 'Here is the DNA sequence in uppercase:' . "\n\n";
print "\U$DNA" . "\n\n";
exit;
#############################################################################################################################
# Exercise 4.5
#Path- /userhomes/students/vmethuku/public_html/fall17/binf634/bookcode/examples/ex4.5.pl

print 'Reverse Transcription of RNA to DNA' . "\n\n";
$RNA= 'AGUCGGCCUUAGUC';
print 'The RNA sequence is:' . "\n\n";
print "$RNA" . "\n\n";
$DNA=$RNA;
$DNA=~ s/U/T/g;
print 'The result of reverse transcription of RNA to DNA is:' . "\n\n";
print "$DNA" . "\n\n";
exit;
#############################################################################################################################
#Exercise 5.2
#Path- /userhomes/students/vmethuku/public_html/fall17/binf634/bookcode/examples/ex5.2.pl

print "Enter first DNA(Preferably short string, for example:ATGC) : ";
$dna1 = <STDIN>;
chomp ($dna1);
$l_dna1 = length($dna1);
print "Enter second DNA(Preferably short string, for example:ATGC) : ";
$dna2 = <STDIN>;
chomp ($dna2);
$dna1 .= $dna2;
print "\nConcatenated output of first and second DNA is :\n";
print $dna1."\n";
print "\nOutput of second DNA lined up over its copy at the end of the above concatenated DNA is :\n";
print $dna1."\n";
print (" " x $l_dna1);
print $dna2."\n";
exit;
#############################################################################################################################
# Exercise 5.4
#Path- /userhomes/students/vmethuku/public_html/fall17/binf634/bookcode/examples/ex5.4.pl
$dna="AATTGGCCAAAATTTT";
$l_dna=length($dna);
$rc_dna="";
$strand="";
for ($i = -1; $i >= -$l_dna; $i--) {
        $strand = substr($dna, $i, 1);
        if ($strand eq "A") {
                $rc_dna .= "T";
        }elsif ($strand eq "T") {
                $rc_dna .= "A";
        }elsif ($strand eq "G") {
                $rc_dna .= "C";
        }elsif ($strand eq "C") {
                $rc_dna .= "G";
        }
}
print "\nInput DNA sequence : ".$dna."\n";
print "Reverse complement of above input DNA sequence : ".$rc_dna."\n";
print "\nInput DNA sequence and it's reverse complement are:\n".$dna."\n".$rc_dna."\n\n";
exit;
#############################################################################################################################
# Exercise 5.6(a)
#Path- /userhomes/students/vmethuku/public_html/fall17/binf634/bookcode/examples/ex5.6.a.pl

$dna1 = "AATGGGGCAC";
print "\n1st DNA sequence : ".$dna1."\n";
$dna2 = "GTGCCCCATT";
print "2nd DNA sequence : ".$dna2."\n";
@a_dna1 = split(//,$dna1);
@a_dna2 = split(//,$dna2);
$strand="";
$count=0;
while(scalar(@a_dna1) != 0) {
        $strand = pop(@a_dna1);
        $strand =~ tr/ATGC/TACG/;
        if($strand eq shift(@a_dna2)){
                $count++;
                next;
        }else {
                last;
        }
}
if($count == length($dna1)) {
        print "\nInput DNA ($dna1 & $dna2) sequences were verified and they are reverse complements of each other.\n\n";
}else {
        print "\nInput DNA ($dna1 & $dna2) sequences were verified and they are not reverse complements of each other.\n\n";
}
exit;
#############################################################################################################################
# Exercise 5.6(b)
#Path- /userhomes/students/vmethuku/public_html/fall17/binf634/bookcode/examples/ex5.6.b.pl

$dna1 = "AATGGGGCAC";
print "\n1st DNA sequence : ".$dna1."\n";
$dna2 = "GATCGACATT";
print "2nd DNA sequence : ".$dna2."\n";
@a_dna1 = split(//,$dna1);
@a_dna2 = split(//,$dna2);
$strand="";
$count=0;
while(scalar(@a_dna1) != 0) {
        $strand = pop(@a_dna1);
        $strand =~ tr/ATGC/TACG/;
        if($strand eq shift(@a_dna2)){
                $count++;
                next;
        }else {
                last;
        }
}
if($count == length($dna1)) {
        print "\nInput DNA ($dna1 & $dna2) sequences were verified and they are reverse complements of each other.\n\n";
}else {
        print "\nInput DNA ($dna1 & $dna2) sequences were verified and they are not reverse complements of each other.\n\n";
}
exit;
#############################################################################################################################
#############################################################################################################################
