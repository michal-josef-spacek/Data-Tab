use strict;
use warnings;

use Data::Tab;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::Tab->new(
	'name' => 'tab',
	'text' => 'The tab',
);
is($obj->name, 'tab', 'Get name() method (tab).');
