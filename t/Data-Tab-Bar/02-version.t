use strict;
use warnings;

use Data::Tab::Bar;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Tab::Bar::VERSION, 0.01, 'Version.');
