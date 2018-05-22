[![Build Status](https://travis-ci.org/sul-dlss/trusted_checksum_repository.svg?branch=master)](https://travis-ci.org/sul-dlss/trusted_checksum_repository)
[![Coverage Status](https://coveralls.io/repos/github/sul-dlss/trusted_checksum_repository/badge.svg)](https://coveralls.io/github/sul-dlss/trusted_checksum_repository)

[![GitHub version](https://badge.fury.io/gh/sul-dlss%2Ftrusted_checksum_repository.svg)](https://badge.fury.io/gh/sul-dlss%2Ftrusted_checksum_repository)


# README

Trusted Checksum Repository is a Rails API for independently storing preservation object checksums.

## Developer Setup

Run the `db_setup.sql` script to add the required users and databases:

```
psql -f db/scripts/db_setup.sql postgres
```
