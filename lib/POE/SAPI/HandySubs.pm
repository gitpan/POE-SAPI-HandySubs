package POE::SAPI::HandySubs;

use 5.010001;
use strict;
use warnings;
use POE;

require Exporter;

our @ISA = qw(Exporter);

our $VERSION = '0.02';

our %EXPORT_TAGS = ( 'all' => [ qw(
pad shorten
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = ('pad');
	
sub pad {
        my ($txt,$len,$padData,$direction) = @_;

        $padData = "_" if (!$padData);
        $direction = "L" if ((!$direction) || ($padData !~ m#^(L|R)$#));

        while (length($txt) < $len) {
                if ($direction eq 'L') { $txt = $padData.$txt; }
                elsif ($direction eq 'R') { $txt = $txt.$padData; }
        }

        return $txt;
}
sub shorten {
	my ($txt,$len,$direction) = @_;

	warn "TODO";
}

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

POE::SAPI::HandySubs - Perl extension for blah blah blah

=head1 SYNOPSIS

  use POE::SAPI::HandySubs;

=head2 EXPORT

None by default.

=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

Paul G Webster, E<lt>paul@daemonrage.netE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2011 by Paul G Webster

All rights reserved.

Redistribution and use in source and binary forms are permitted
provided that the above copyright notice and this paragraph are
duplicated in all such forms and that any documentation,
advertising materials, and other materials related to such
distribution and use acknowledge that the software was developed
by the 'blank files'.  The name of the
University may not be used to endorse or promote products derived
from this software without specific prior written permission.
THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.


=cut
