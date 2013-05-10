package MyApp2::Model::File;
use strict;
use warnings;
use base 'Catalyst::Model::Adaptor';

__PACKAGE__->config( 
    class       => 'MyApp2::File',
    constructor => 'new',
);

1;
