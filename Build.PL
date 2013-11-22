
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Test::More" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Pod::Weaver configuration the way DOHERTY does it",
  "dist_author" => [
    "Mike Doherty <doherty\@cpan.org>"
  ],
  "dist_name" => "Pod-Weaver-PluginBundle-Author-DOHERTY",
  "dist_version" => "0.007",
  "license" => "perl",
  "module_name" => "Pod::Weaver::PluginBundle::Author::DOHERTY",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Pod::Weaver::Config::Assembler" => 0,
    "Pod::Weaver::Section::Availability" => "1.20",
    "Pod::Weaver::Section::BugsAndLimitations" => "1.20",
    "Pod::Weaver::Section::SourceGitHub" => "0.53",
    "perl" => "5.006",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
