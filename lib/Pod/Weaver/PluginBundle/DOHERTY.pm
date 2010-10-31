use strict;
use warnings;

package Pod::Weaver::PluginBundle::DOHERTY;
# ABSTRACT: Pod::Weaver configuration the way DOHERTY does it

# Dependencies
use Pod::Weaver::Plugin::Encoding                       qw();
use Pod::Weaver::Section::Availability 1.102570         qw();
use Pod::Weaver::Section::SourceGitHub 0.53             qw();
use Pod::Weaver::Section::BugsAndLimitations 1.102670   qw(); # To read the bugtracker properly

use Pod::Weaver::Config::Assembler;

sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

sub mvp_bundle_config {
    return (
        [ '@DOHERTY/CorePrep',              _exp('@CorePrep'),          {} ],
        [ '@DOHERTY/Encoding',              _exp('-Encoding'),          {} ],
        [ '@DOHERTY/Name',                  _exp('Name'),               {} ],
        [ '@DOHERTY/Version',               _exp('Version'),            {} ],

        [ 'SYNOPSIS',                       _exp('Generic'),            {} ],
        [ 'DESCRIPTION',                    _exp('Generic'),            {} ],
        [ 'OVERVIEW',                       _exp('Generic'),            {} ],

        [ 'METHODS',                        _exp('Generic'),            {} ],
        [ 'FUNCTIONS',                      _exp('Generic'),            {} ],

        [ '@DOHERTY/Leftovers',             _exp('Leftovers'),          {} ],

        [ '@DOHERTY/Availability',          _exp('Availability'),       {} ],
        [ '@DOHERTY/SourceGitHub',          _exp('SourceGitHub'),       {} ],
        [ '@DOHERTY/BugsAndLimitations',    _exp('BugsAndLimitations'), {} ],
        [ '@DOHERTY/Authors',               _exp('Authors'),            {} ],
        [ '@DOHERTY/Legal',                 _exp('Legal'),              {} ],
    );
}

1;

__END__

=for Pod::Coverage mvp_bundle_config
