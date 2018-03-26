#!/usr/bin/perl-w

$DNA = "AAAA   TTT CC    G";
$DNA =~ s/\s//g;
print "$DNA\n";

$count_A = 0;
$count_T = 0;
$count_C = 0;
$count_G = 0;
$count_error = 0;

#

for ($i=0; $i<10; $i++)
{
$base = substr($DNA, $i, 1);

if ($base eq'A')
{
++$count_A;
}
elsif ($base eq'C')
{
++$count_C;
}
elsif ($base eq'T')
{
++$count_T;
}
elsif ($base eq'G')
{
++$count_G;
}
else
{
print "!!Error!!\n";
++$count_error;
}

}

print "A's = $count_A\n";
print "G's = $count_G\n";
print "C's = $count_C\n";
print "T's = $count_T\n";
print "Errors = $count_error\n"



