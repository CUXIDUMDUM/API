package MyApp2::File;
use strict;
use warnings;
use Moose;
use namespace::autoclean;
use Data::Recursive::Encode;

use YAML qw/DumpFile LoadFile/;

sub dump_data {
    my ($self, $data) = @_;
	my $file = 'C:\Temp\rest1\API\dump.yml';
	DumpFile($file, Data::Recursive::Encode->encode_utf8($data));
	return $data;
}

sub load_data {
    my ($self) = @_;
	my $file = 'C:\Temp\rest1\API\dump.yml';
	my $data = LoadFile($file);
	return $data;
}

1;
