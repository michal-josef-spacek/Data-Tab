package Data::Tab::Bar;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils qw(check_array_object check_required);

our $VERSION = 0.01;

has tabs => (
	default => [],
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check tabs.
	check_required($self, 'tabs');
	check_array_object($self, 'tabs', 'Data::Tab');

	return;
}

1;

__END__
