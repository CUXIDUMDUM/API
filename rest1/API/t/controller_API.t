use strict;
use warnings;
use Test::More;


use Catalyst::Test 'MyApp2';
use MyApp2::Controller::API;

ok( request('/api')->is_success, 'Request should succeed' );
done_testing();
