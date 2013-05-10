package MyApp1::Controller::Portal;
use Moose;
use namespace::autoclean;
use Data::Recursive::Encode;
use Data::Dumper;

BEGIN { extends 'Catalyst::Controller::REST' }
__PACKAGE__->config(default => 'application/json');

sub thing : Local : ActionClass('REST') { }

# Answer GET requests to "thing"
sub thing_GET {
   my ( $self, $c ) = @_;

   my $data = $c->model('NSAPI')->get();
   $c->stash->{rest} = $data;
   $c->forward("View::JSON");   
}

# Answer PUT requests to "thing"
sub thing_PUT {
	my ( $self, $c ) = @_;
	
	print STDERR Dumper($c->req->data);
	my $data  = $c->req->data;
	$data = Data::Recursive::Encode->decode_utf8($data);
	print STDERR Dumper($c->req->data);
	$c->stash->{rest} = $c->model('NSAPI')->post( $data );
	$c->stash->{rest} = Data::Recursive::Encode->encode_utf8( $c->stash->{rest} );
	$c->forward("View::JSON"); 
}

sub thing_POST {
	my ( $self, $c ) = @_;

	print STDERR Dumper($c->req->data);
	my $data  = $c->req->data;
	$data = Data::Recursive::Encode->decode_utf8($data);
	print STDERR Dumper($c->req->data);
	$c->stash->{rest} = $c->model('NSAPI')->post( $data );
	$c->stash->{rest} = Data::Recursive::Encode->encode_utf8( $c->stash->{rest} );
	$c->forward("View::JSON"); 
}

__PACKAGE__->meta->make_immutable;

1;
