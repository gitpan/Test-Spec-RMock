package Test::Spec::RMock;
# ABSTRACT: a mocking library for Test::Spec

use Moose;
use namespace::autoclean;

use Moose::Exporter;
use Test::Spec::RMock::AnyConstraint;
use Test::Spec::RMock::AtLeastConstraint;
use Test::Spec::RMock::ExactlyConstraint;
use Test::Spec::RMock::MessageExpectation;
use Test::Spec::RMock::MockObject;

Moose::Exporter->setup_import_methods(
    with_meta => [ qw(rmock) ],
);

sub rmock {
    my (undef, $name) = @_;
    Test::Spec::RMock::MockObject->new($name);
}

1;

__END__

=pod

=head1 NAME

Test::Spec::RMock - a mocking library for Test::Spec

=head1 VERSION

version 0.002

=head1 SYNOPSIS

  use Test::Spec;
  use Test::Spec::RMock;

  describe "Something" => sub {
      it "should do something" => {
          my $foo = rmock('Foo');
          $foo->should_receive('bar')->twice->and_return('baz');
          Something->new->do_something_with($foo);
      };
  };

  runtests unless caller;

=head1 SEE ALSO

=over 4

=item *

L<Test::Spec>

=back

=head1 AUTHOR

Kjell-Magne Øierud <kjellm@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Kjell-Magne Øierud.

This is free software, licensed under:

  The MIT (X11) License

=cut
