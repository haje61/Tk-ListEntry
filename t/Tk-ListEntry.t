
use strict;
use warnings;
use Test::Tk;
use Tk;

use Test::More tests => 4;
BEGIN { use_ok('Tk::ListEntry') };


createapp(
);

my $le;
if (defined $app) {
	$le = $app->ListEntry(
		-values => [qw/Red Green Blue Cyan Magenta Yellow Black White Pink Purple Brown Beige Orange/]
	)->pack(-fill => 'x');
}
@tests = (
	 [sub { return defined $le }, 1, 'Created ListEntry'],
);

starttesting


