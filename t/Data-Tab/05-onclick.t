use strict;
use warnings;

use Data::Tab;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::Tab->new(
	'name' => 'tab',
	'text' => 'The tab',
);
is($obj->onclick, undef, 'Get onclick() method (undef).');

# Test.
$obj = Data::Tab->new(
	'name' => 'tab',
	'onclick' => 'foo();',
	'text' => 'The tab',
);
is($obj->onclick, 'foo();', 'Get onclick() method (foo();).');
