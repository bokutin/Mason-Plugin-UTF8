package Mason::Plugin::UTF8::Request;

use Mason::PluginRole;
use Encode;

has output_encoding => ( is => "rw", default => "utf8" );

after 'process_output' => sub {
    my ($self, $outref) = @_;

    if ( my $enc = $self->output_encoding ) {
        $$outref = encode( $enc, $$outref );
    }
};

#around 'run' => sub {
#    my $orig = shift;
#    my $self = shift;
#
#    my %params = @_;
#    while (my ($key, $value) = each(%params)) {
#        $value = decode_utf8($value);
#    }
#    $self->$orig(%params);
#};

1;
