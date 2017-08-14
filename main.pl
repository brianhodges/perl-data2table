use strict;
use warnings;
use country;
my $sp = "\n";
print $sp;

my $c1 = country->new( 'Name' => "USA", 'Population' => "350 million" );
my $c2 = country->new( 'Name' => "China", 'Population' => "1.4 billion" );
my $c3 = country->new( 'Name' => "Russia", 'Population' => "145 million" );
my @countries = ($c1, $c2, $c3);

print "DUMP:";
print $sp;
print "[";
print $sp;
foreach my $country (@countries) {
  print "\t", "{ \"Name\":\"", $country->{'Name'}, "\", \"Population\":\"", $country->{'Population'}, "\"}", $sp;
}
print "]";
print $sp, $sp;

print "SANITIZED:";
print $sp;
print "[";
print $sp;
foreach my $country (@countries) {
  print "\t", "{:Name => ", $country->{'Name'}, ", :Population => ", $country->{'Population'}, "}", $sp;
}
print "]";
print $sp, $sp;

print "TABLE:", $sp;
print "Countries | Population", $sp;
print "-"x(length("Countries | Population")), $sp;
foreach my $country (@countries) {
	my $ws = length("Countries ") - length($country->{'Name'});
	print $country->{'Name'}, " "x($ws), "|", $country->{'Population'}, $sp;
}