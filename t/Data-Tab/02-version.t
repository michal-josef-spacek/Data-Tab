use strict;
use warnings;

use Data::Tab;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Tab::VERSION, 0.01, 'Version.');
