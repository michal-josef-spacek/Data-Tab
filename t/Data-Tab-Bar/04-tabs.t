use strict;
use warnings;

use Data::Tab;
use Data::Tab::Bar;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::Tab::Bar->new(
	'tabs' => [],
);
my $ret_ar = $obj->tabs;
is_deeply(
	$ret_ar,
	[],
	"Get tabs (blank array ref).",
);

# Test.
my @tabs = (
	Data::Tab->new(
		'name' => 'tab_1',
		'text' => 'Tab #1',
	),
	Data::Tab->new(
		'name' => 'tab_2',
		'text' => 'Tab #2',
	),
);
$obj = Data::Tab::Bar->new(
	'tabs' => \@tabs,
);
$ret_ar = $obj->tabs;
is_deeply(
	$ret_ar,
	\@tabs,
	"Get tabs (two tabs).",
);
