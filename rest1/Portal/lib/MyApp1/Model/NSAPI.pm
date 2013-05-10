package MyApp1::Model::NSAPI;
use strict;
use warnings;
use base 'Catalyst::Model::Adaptor';

__PACKAGE__->config( 
    class       => 'MyApp1::NSAPI',
    constructor => 'new',
);

1;
