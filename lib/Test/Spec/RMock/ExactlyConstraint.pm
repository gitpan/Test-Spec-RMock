package Test::Spec::RMock::ExactlyConstraint;

sub new {
    my ($class, $target) = @_;
    bless { _target => $target }, $class;
}

sub call {
    my ($self, $times_called) = @_;
    $times_called == $self->{_target};
}

1;

__END__

=pod

=head1 NAME

Test::Spec::RMock::ExactlyConstraint

=head1 VERSION

version 0.005001

=head1 AUTHOR

Kjell-Magne Øierud <kjellm@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Kjell-Magne Øierud.

This is free software, licensed under:

  The MIT (X11) License

=cut
