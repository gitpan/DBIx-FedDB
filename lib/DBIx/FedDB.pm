package DBIx::FedDB;
use base qw(DBIx::FedDB::Base);
use Class::Std;
use Class::Std::Utils;
use Module::Runtime qw(use_module);

use warnings;
use strict;
use Carp;

use version; our $VERSION = qv('0.0.1');

{
	no warnings 'redefine';
	sub new {      
		my ($self, $arg_ref) = @_;
		return use_module('DBIx::FedDB::' . $arg_ref->{mode}, 0.0.1)->new( $arg_ref );
	}
}



1; # Magic true value required at end of module
__END__

=head1 NAME

DBIx::FedDB - Control a Federated Database with Catalyst and MySQL


=head1 VERSION

This document describes DBIx::FedDB version 0.0.1


=head1 SYNOPSIS

Server Mode Script

    use DBIx::FedDB;

    my $servers    = [ 'cluster1.bioinformatics.ualr.edu/', 'cluster2.bioinformatics.ualr.edu/catalyst/' ];
    my $connection = { database => 'feddb',
    		       host     => 'localhost',
    		       user     => 'username',
    		       pass     => 'password' };
    
    my $server = DBIx::FedDB->new({ mode => 'Server', connection => $connection, servers => $servers });
    
    print $server->version(), "\n";
    
    print $server->query_count( 'AA123456' ), "\n\n";
    print $server->subject_count( 'AB123456' ), "\n\n";
    
    print $server->query( 'AC123456' ), "\n\n";
    print $server->subject( 'AA123456' ), "\n\n";
    
The Client mode is implemented in the included Catalyst Controller module 'FedDB.pm'.

  
=head1 DESCRIPTION


=head1 INTERFACE 


=head1 DIAGNOSTICS


=over

=item C<< Error message here, perhaps with %s placeholders >>

[Description of error here]

=item C<< Another error message here >>

[Description of error here]

[Et cetera, et cetera]

=back


=head1 CONFIGURATION AND ENVIRONMENT

DBIx::FedDB requires no configuration files or environment variables.


=head1 DEPENDENCIES

    Class::Std;
    Class::Std::Utils;
    Module::Runtime qw(use_module);
    Parallel::Simple qw(prun);
    LWP::Simple;

=head1 INCOMPATIBILITIES

None reported.


=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<bug-dbix-feddb@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.


=head1 AUTHOR

Roger A Hall  C<< <rogerhall@cpan.org> >>


=head1 LICENSE AND COPYRIGHT

Copyleft (c) 2009, Roger A Hall C<< <rogerhall@cpan.org> >>. 

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.


=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.
