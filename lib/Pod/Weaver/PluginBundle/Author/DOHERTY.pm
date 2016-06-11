package Pod::Weaver::PluginBundle::Author::DOHERTY;
# ABSTRACT: Pod::Weaver configuration the way DOHERTY does it
use strict;
use warnings;
# VERSION

use Pod::Weaver::Config::Assembler;

sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

sub mvp_bundle_config {
    return (
        [ '@Author::DOHERTY/CorePrep',              _exp('@CorePrep'),          {} ],
        [ '@Author::DOHERTY/SingleEncoding',        _exp('-SingleEncoding'),    {} ],
        [ '@Author::DOHERTY/Name',                  _exp('Name'),               {} ],
        [ '@Author::DOHERTY/Version',               _exp('Version'),            {} ],

        [ '@Author::DOHERTY/Prelude',               _exp('Region'),             {region_name => 'prelude'} ],

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
        [ 'COMPATIBILITY',                          _exp('Generic'),            {} ],

        [ 'CREDITS',                                _exp('Generic'),            {} ],
        [ '@Author::DOHERTY/Authors',               _exp('Authors'),            {} ],
        [ '@Author::DOHERTY/Legal',                 _exp('Legal'),              {} ],
    );
}

1;

__END__

=for Pod::Coverage mvp_bundle_config
