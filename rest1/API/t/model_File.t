use strict;
use warnings;
use Test::More;

use MyApp2::File;

my $o = MyApp2::File->new;
my $dump_data = { foo => "bar" };
$o->dump_data($dump_data);

my $load_data = $o->load_data();
is_deeply( $dump_data, $load_data, "Got correct load and dump");

done_testing();
