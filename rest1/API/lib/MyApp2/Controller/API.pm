package MyApp2::Controller::API;
use Moose;
use namespace::autoclean;
use Data::Dumper;
use Data::Recursive::Encode;

BEGIN { extends 'Catalyst::Controller::REST' }
__PACKAGE__->config(default => 'application/json');

sub thing : Local : ActionClass('REST') { }

# Answer GET requests to "thing"
sub thing_GET {
   my ( $self, $c ) = @_;

   my $data = $c->model('File')->load_data();
   $c->stash->{rest} = $data;   
}

# Answer PUT requests to "thing"
sub thing_PUT {
	my ( $self, $c ) = @_;

	print STDERR Dumper($c->req->data);
	my $data  = $c->req->data;
	$data = Data::Recursive::Encode->decode_utf8($data);
	print STDERR Dumper($c->req->data);
	$c->stash->{rest} = $c->model('File')->dump_data($data);
}

sub thing_POST {
	my ( $self, $c ) = @_;

	print STDERR Dumper($c->req->data);
	my $data  = $c->req->data;
	$data = Data::Recursive::Encode->decode_utf8($data);
	print STDERR Dumper($c->req->data);
	$c->stash->{rest} = $c->model('File')->dump_data($data);
}
__PACKAGE__->meta->make_immutable;

1;
