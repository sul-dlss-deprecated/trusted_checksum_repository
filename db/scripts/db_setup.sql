CREATE USER tcr;
ALTER USER tcr CREATEDB;
CREATE DATABASE tcr;
ALTER DATABASE tcr OWNER TO tcr;
GRANT ALL PRIVILEGES ON DATABASE tcr TO tcr;

CREATE USER tcr_test;
ALTER USER tcr_test CREATEDB;
CREATE DATABASE tcr_test;
ALTER DATABASE tcr_test OWNER TO tcr_test;
GRANT ALL PRIVILEGES ON DATABASE tcr_test TO tcr_test;
