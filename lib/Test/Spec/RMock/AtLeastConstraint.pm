package Test::Spec::RMock::AtLeastConstraint;

sub new {
    my ($class, $bound) = @_;
    bless { _bound => $bound }, $class;
}

sub call {
    my ($self, $times_called) = @_;
    $times_called >= $self->{_bound};
}

1;

__END__

=pod

=head1 NAME

Test::Spec::RMock::AtLeastConstraint

=head1 VERSION

version 0.003

=head1 AUTHOR

Kjell-Magne Øierud <kjellm@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Kjell-Magne Øierud.

This is free software, licensed under:

  The MIT (X11) License

=cut
