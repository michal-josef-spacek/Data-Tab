use strict;
use warnings;

use Data::Tab;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 6;
use Test::NoWarnings;

# Test.
my $obj = Data::Tab->new(
	'name' => 'tab',
	'text' => 'The tab',
);
isa_ok($obj, 'Data::Tab');

# Test.
$obj = Data::Tab->new(
	'name' => 'tab',
	'onclick' => 'foo();',
	'text' => 'The tab',
	'url' => 'https://example.com',
);
isa_ok($obj, 'Data::Tab');

# Test.
eval {
	Data::Tab->new(
		'text' => 'The tab',
	);
};
is($EVAL_ERROR, "Parameter 'name' is required.\n",
	"Parameter 'name' is required.");
clean();

# Test.
eval {
	Data::Tab->new(
		'name' => 'tab',
	);
};
is($EVAL_ERROR, "Parameter 'text' is required.\n",
	"Parameter 'text' is required.");
clean();

# Test.
eval {
	Data::Tab->new(
		'name' => 'tab',
		'text' => ('a' x 90),
	);
};
is($EVAL_ERROR, "Parameter 'text' has length greater than '80'.\n",
	"Parameter 'text' has length greater than '80'.");
clean();
