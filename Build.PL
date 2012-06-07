
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Carp" => 0,
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Scalar::Util" => 0,
    "Test::More" => "0.94",
    "perl" => "5.004"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Interface for module locate",
  "dist_author" => [
    "celogeek <me\@celogeek.com>"
  ],
  "dist_name" => "App-Module-Locate",
  "dist_version" => "0.3",
  "license" => "perl",
  "module_name" => "App::Module::Locate",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Module::Locate" => 0,
    "perl" => "5.006",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => [
    "bin/mlocate"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
