use strict;
use warnings;
use Test::More;


use Catalyst::Test 'MyApp1';
use MyApp1::Controller::Portal;

ok( request('/portal')->is_success, 'Request should succeed' );
done_testing();
