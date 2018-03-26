#!/usr/bin/perl
# 
# Exercise 11.1

use strict;
use warnings;
use File::Find;

# The special array %ENV is predefined, and gives you access to the environmental
# variables such as the name of your home directory, which we use here as the
# starting place for the search.

find ( \&my_sub, ($ENV{'HOME'}) );

# Reports all files greater than 10Mbytes in size and older than a year
sub my_sub {
    -f
    and (-s > 10000000)
    and (-A > 365)
    and (print $File::Find::name," ", -s, " bytes ", -A, " days old\n");
}

exit;

#################################################################################################
#!/usr/bin/perl
 
# Exercise 11.2

use strict;
use warnings;
use File::Find;

# To find everything on the home directory. 
find ( \&isperl, ($ENV{'HOME'}) );
#find ( \&isperl, '/') ); # (To find everything on the computer.)

exit;

# Subroutines 

# Reports all Perl files within File::Find
sub isperl {
	#
	# This method finds command interpretation lines
	# Ignore files that aren't ASCII text files or aren't readable
	-T and -r or return 0;

	# open the file and see if the first line is a command interpreter line such as:
	#!/usr/bin/perl
	#
   	open(THISFILE, $_) or (print "$File::Find::name : cannot open\n") and return 0;

	my $firstline = <THISFILE>;
	close(THISFILE);
	$firstline or return 0;
	($firstline =~ /^#\!.*perl/) and (print $File::Find::name, "\n") and (return 1);
	return 0;
}

sub isperl2 {

	# This method looks for the filename extension ".pl".
	# Ignore files that aren't ASCII text files or aren't readable
	-T and -r or return 0;

	 /\.pl$/ and (print $File::Find::name, "\n") and (return 1);

	 return 0;
}
