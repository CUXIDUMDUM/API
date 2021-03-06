package MyApp2::View::TT;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
);

=head1 NAME

MyApp2::View::TT - TT View for MyApp2

=head1 DESCRIPTION

TT View for MyApp2.

=head1 SEE ALSO

L<MyApp2>

=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
