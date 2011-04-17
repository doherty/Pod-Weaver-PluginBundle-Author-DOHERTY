package Pod::Weaver::PluginBundle::Author::DOHERTY;
# ABSTRACT: Pod::Weaver configuration the way DOHERTY does it
use strict;
use warnings;
# VERSION

# Dependencies
use Pod::Weaver::Plugin::Encoding                       qw();
use Pod::Weaver::Section::Availability       1.102570   qw(); # To set github URLs properly: https://rt.cpan.org/Ticket/Display.html?id=63364
use Pod::Weaver::Section::SourceGitHub       0.53       qw();
use Pod::Weaver::Section::BugsAndLimitations 1.102670   qw(); # To read the bugtracker properly: https://rt.cpan.org/Ticket/Display.html?id=61605

use Pod::Weaver::Config::Assembler;

sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

sub mvp_bundle_config {
    return (
        [ '@Author::DOHERTY/CorePrep',              _exp('@CorePrep'),          {} ],
        [ '@Author::DOHERTY/Encoding',              _exp('-Encoding'),          {} ],
        [ '@Author::DOHERTY/Name',                  _exp('Name'),               {} ],
        [ '@Author::DOHERTY/Version',               _exp('Version'),            {} ],

        [ 'SYNOPSIS',                               _exp('Generic'),            {} ],
        [ 'DESCRIPTION',                            _exp('Generic'),            {} ],
        [ 'OVERVIEW',                               _exp('Generic'),            {} ],
        [ 'OPTIONS',                                _exp('Generic'),            {} ],

        [ 'METHODS',                                _exp('Generic'),            {} ],
        [ 'FUNCTIONS',                              _exp('Generic'),            {} ],

        [ '@Author::DOHERTY/Leftovers',             _exp('Leftovers'),          {} ],

        [ '@Author::DOHERTY/Availability',          _exp('Availability'),       {} ],
        [ '@Author::DOHERTY/SourceGitHub',          _exp('SourceGitHub'),       {} ],
        [ '@Author::DOHERTY/BugsAndLimitations',    _exp('BugsAndLimitations'), {} ],
        [ 'CREDITS',                                _exp('Generic'),            {} ],
        [ '@Author::DOHERTY/Authors',               _exp('Authors'),            {} ],
        [ '@Author::DOHERTY/Legal',                 _exp('Legal'),              {} ],
    );
}

1;

__END__

=for Pod::Coverage mvp_bundle_config
