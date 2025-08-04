use strict;
use warnings;

use Data::Tab;
use Data::Tab::Bar;
use English;
use Error::Pure::Utils qw(clean);
use Test::MockObject;
use Test::More 'tests' => 6;
use Test::NoWarnings;

# Test.
my $obj = Data::Tab::Bar->new(
	'tabs' => [],
);
isa_ok($obj, 'Data::Tab::Bar');

# Test.
$obj = Data::Tab::Bar->new(
	'tabs' => [Data::Tab->new(
		'name' => 'tab',
		'text' => 'The tab',
	)],
);
isa_ok($obj, 'Data::Tab::Bar');

# Test.
eval {
	Data::Tab::Bar->new;
};
is($EVAL_ERROR, "Parameter 'tabs' is required.\n",
	"Parameter 'tabs' is required.");
clean();

# Test.
eval {
	Data::Tab::Bar->new(
		'tabs' => ['bad'],
	);
};
is($EVAL_ERROR, "Parameter 'tabs' with array must contain 'Data::Tab' objects.\n",
	"Parameter 'tabs' with array must contain 'Data::Tab' objects (bad).");
clean();

# Test.
my $mock = Test::MockObject->new;
eval {
	Data::Tab::Bar->new(
		'tabs' => [$mock],
	);
};
is($EVAL_ERROR, "Parameter 'tabs' with array must contain 'Data::Tab' objects.\n",
	"Parameter 'tabs' with array must contain 'Data::Tab' objects (different object).");
clean();
