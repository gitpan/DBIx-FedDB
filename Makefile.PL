use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'DBIx::FedDB',
    AUTHOR              => 'Roger A Hall <rogerhall@cpan.org>',
    VERSION_FROM        => 'lib/DBIx/FedDB.pm',
    ABSTRACT_FROM       => 'lib/DBIx/FedDB.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    	'Parallel::Simple'  => 0.01, 
    	'LWP::Simple'       => 1.41, 
	'Class::Std'        => 0.0.9, 
	'Class::Std::Utils' => 0.0.3,
	'DBIx::MySperqlOO'  => 1.0.1, 
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'DBIx-FedDB-*' },
);
