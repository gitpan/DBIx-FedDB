use Test::More tests => 4;

BEGIN {
use_ok( 'DBIx::FedDB' );
use_ok( 'DBIx::FedDB::Base' );
use_ok( 'DBIx::FedDB::Client' );
use_ok( 'DBIx::FedDB::Server' );
}

diag( "Testing DBIx::FedDB $DBIx::FedDB::VERSION" );
diag( "Testing DBIx::FedDB::Base $DBIx::FedDB::Base::VERSION" );
diag( "Testing DBIx::FedDB::Client $DBIx::FedDB::Client::VERSION" );
diag( "Testing DBIx::FedDB::Server $DBIx::FedDB::Server::VERSION" );
