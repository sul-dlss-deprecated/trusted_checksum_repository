[![Build Status](https://travis-ci.org/sul-dlss/trusted_checksum_repository.svg?branch=master)](https://travis-ci.org/sul-dlss/trusted_checksum_repository)
[![Coverage Status](https://coveralls.io/repos/github/sul-dlss/trusted_checksum_repository/badge.svg)](https://coveralls.io/github/sul-dlss/trusted_checksum_repository)
[![Dependency Status](https://gemnasium.com/badges/github.com/sul-dlss/trusted_checksum_repository.svg)](https://gemnasium.com/github.com/sul-dlss/trusted_checksum_repository)
[![GitHub version](https://badge.fury.io/gh/sul-dlss%2Ftrusted_checksum_repository.svg)](https://badge.fury.io/gh/sul-dlss%2Ftrusted_checksum_repository)

# Trusted Checksum Repository

Trusted Checksum Repository is a Rails application for independently storing preservation object checksums.

## Configuration

### Setting up PostgreSQL

Check to see if Postgres is installed:
`postgres -V`

and that it's accepting connections:
`pg_isready`

### Configuring PostgreSQL

Using the `psql` utility, run these two setup scripts from the command line, like so:
```sh
psql -f db/scripts/tcr_setup.sql postgres
psql -f db/scripts/tcr_test_setup.sql postgres
```

These scripts do the following for you:
* create the test and dev PostgreSQL users.
* create the test and dev databases.
* setup the needed ownership and permissions between the DBs and the users.

For more info on postgres commands, see https://www.postgresql.org/docs/

## Usage Instructions

## Development

### Running Tests

To run the tests:

```sh
bundle exec rake spec
```

### Running Rubocop

To run rubocop:

```sh
bundle exec rake rubocop
```

## Deploying

Capistrano is used to deploy.
