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
is($obj->url, undef, 'Get url() method (undef).');

# Test.
$obj = Data::Tab->new(
	'name' => 'tab',
	'text' => 'The tab',
	'url' => 'https://example.com',
);
is($obj->url, 'https://example.com', 'Get url() method (https://example.com).');
