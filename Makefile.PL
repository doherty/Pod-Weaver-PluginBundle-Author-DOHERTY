
use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Pod::Weaver configuration the way DOHERTY does it",
  "AUTHOR" => "Mike Doherty <doherty\@cpan.org>",
  "BUILD_REQUIRES" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Test::More" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "Module::Build" => "0.3601"
  },
  "DISTNAME" => "Pod-Weaver-PluginBundle-Author-DOHERTY",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Pod::Weaver::PluginBundle::Author::DOHERTY",
  "PREREQ_PM" => {
    "Pod::Weaver::Config::Assembler" => 0,
    "Pod::Weaver::Plugin::Encoding" => 0,
    "Pod::Weaver::Section::Availability" => "1.20",
    "Pod::Weaver::Section::BugsAndLimitations" => "1.20",
    "Pod::Weaver::Section::SourceGitHub" => "0.53",
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.007",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



