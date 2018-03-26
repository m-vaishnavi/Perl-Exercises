###################################################################################
###################################################################################
#1.

#!/usr/bin/perl-w

print "\nEnter an input string: ";
$str = <STDIN>;
chomp $str;

if($str =~ /^(ba|a)?t+$/) 
{
        print "Match\n\n";
}
else 
{
        print "Mismatch\n\n";
}

exit;
###################################################################################
#2.

#!/usr/bin/perl-w

print "\nEnter an input string: ";
$str = <STDIN>;
chomp $str;

if($str =~ /jeff/) 
{
        print "Input string contains 'jeff' \n\n";
}
else 
{
        print "Input string does not contain 'jeff'\n\n";
}
exit;
###################################################################################
#3.

#!/usr/bin/perl-w

print "\nEnter an input string: ";
$str = <STDIN>;
chomp $str;

if($str =~ /^b[a]+t$/) 
{
		print "Match \n\n";
}
else 
{
		print "Mismatch\n\n";
}
exit;
###################################################################################
#4.

#!/usr/bin/perl-w

print "\nEnter an input string: ";
$str = <STDIN>;
chomp $str;

if($str =~ /^(h|H)(o|O)(g|G)$/)
{
		print "Match \n\n";
}
else
{
		print "Mismatch\n\n";
}
exit;
###################################################################################
#5.

#!/usr/bin/perl-w

print "\nEnter an input number: ";
$num = <STDIN>;
chomp $num;

if($num =~ /^\d*(\.\d+)?$/)
{
		print "Match \n\n";
}
else
{
		print "Mismatch\n\n";
}
exit;
###################################################################################
#6.

#!/usr/bin/perl-w

print "\nEnter an input number: ";
$num = <STDIN>;
chomp $num;

if($num =~ /^[\-]?\d*(?<!8)$/)
{
   print "Match \n\n";
}
else
{
   print "Mismatch\n\n";
}
exit;
###################################################################################
#7.

#!/usr/bin/perl-w

print "\nEnter an input string or number: ";
$str = <STDIN>;
chomp $str;

if($str =~ /(^\s?[a-zA-Z]+(\s||\t)+[a-zA-Z]+\s?$)/ || $str =~ /(^\s?[\-]?\d+(\.\d+)?(\s||\t)+[\-]?\d+(\.\d+)?\s?$)/)
{
   print "Match \n\n";
}
else
{
   print "Mismatch\n\n";
}
exit;
###################################################################################
#8.

#!/usr/bin/perl-w

$str = "c my dog run gg234and me" ;
$str =~ /c(.*)gg(\d*)/;

$first = $1;
$second = $2;

print "\nThe value of \$1 is :$first\n\n";
print "The value of \$2 is :$second\n\n";

exit;
###################################################################################
#!/usr/bin/perl-w

#9. Five strings that match and two strings that do not match the regex: c[abc]+\s+k[aeiou]*

print "\nThe given regex is '/(c[abc]+\s+k[aeiou]*)/'\n\n";
# Array having five strings that match given regex
@match = ("cabc  kaeiou", "cabcabc  kaeiouaeiou", "cabc  kaeiouaeiou", "cabcabc   kaeiou", "cabcab   kaeiou");

foreach $str(@match) {
        if($str =~ /(c[abc]+\s+k[aeiou]*)/)
        {
                print "\nThe string '$str' matches the given regex.\n";
        }
        else
        {
                print "\nThe string '$str' does not match the given regex.\n";
        }
}
print "\n";

# Array having two strings that do not match given regex
@not_match = ("cabc   aeiou", "cabckaeiou");
foreach $str(@not_match) {
        if($str =~ /(c[abc]+\s+k[aeiou]*)/)
        {
                print "\nThe string '$str' matches the given regex.\n";
        }
        else
        {
                print "\nThe string '$str' does not match the given regex.\n";
        }
}
print "\n";

exit;

###################################################################################
###################################################################################