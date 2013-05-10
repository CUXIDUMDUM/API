use strict;
use warnings;
use Test::More;
use MyApp1::NSAPI;
use JSON;

my $o = MyApp1::NSAPI->new;

my $r = $o->get();
print $r,"\n";
my $data = decode_json $r;
$data->{1} = 2;
$r = $o->post($data);

done_testing();
