package country;
use strict;
use warnings;

sub new {
  my $type = shift;
  my %params = @_;
  my $self = {};
  $self->{'Name'} = $params{'Name'};
  $self->{'Population'} = $params{'Population'};
  bless $self, $type;
}

1;