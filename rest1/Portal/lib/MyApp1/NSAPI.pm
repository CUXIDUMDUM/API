package MyApp1::NSAPI;
use strict;
use warnings;
use Moose;

use HTTP::Request::Common qw(POST PUT GET);
use LWP::UserAgent;
use Data::Recursive::Encode;
use JSON;

has ua => (
    is => 'ro',
    isa => 'Object',
    required => 1,
    default => sub { LWP::UserAgent->new }
);

has url => (
    is => 'ro',
    isa => 'Str',
	default => 'http://localhost:5000/api/thing',
);

sub get {
    my ($self) = @_;
    my $req = HTTP::Request->new( GET => $self->url );
    $req->content_type('application/json;charset=utf-8');

    my $r = $self->ua->request($req);
    return decode_json($r->decoded_content) if $r->is_success;
}

sub post {
    my ($self, $data) = @_;

	#my $utf8_data = Data::Recursive::Encode->encode_utf8($data);
	my $json_data = encode_json($data);
    my $r = $self->ua->post(
        $self->url ,
        'Content-type'     => 'application/json;charset=utf-8',
        'Content'          => $json_data,
    );
	return decode_json($r->decoded_content) if $r->is_success;
}

1;
