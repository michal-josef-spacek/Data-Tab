package Data::Tab;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_length check_required);

our $VERSION = 0.01;

has name => (
	is => 'ro',
);

has onclick => (
	is => 'ro',
);

has text => (
	is => 'ro',
);

has url => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check name.
	check_required($self, 'name');

	# Check text.
	check_required($self, 'text');
	check_length($self, 'text', 80);

	return;
}

1;

__END__
