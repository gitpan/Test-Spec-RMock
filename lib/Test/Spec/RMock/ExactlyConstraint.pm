package Test::Spec::RMock::ExactlyConstraint;

use Moose;
use namespace::autoclean;

has _target => (is => 'ro');

around BUILDARGS => sub {
    my ($orig, $class, $target) = @_;
    my $self = $orig->($class, _target => $target);
};

sub call {
    my ($self, $times_called) = @_;
    $times_called == $self->_target;
}

1;

__END__

=pod

=head1 NAME

Test::Spec::RMock::ExactlyConstraint

=head1 VERSION

version 0.002

=head1 AUTHOR

Kjell-Magne Øierud <kjellm@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Kjell-Magne Øierud.

This is free software, licensed under:

  The MIT (X11) License

=cut
