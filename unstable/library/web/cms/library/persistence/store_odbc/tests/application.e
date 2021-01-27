note
	description : "tests application root class"
	date        : "$Date: 2015-06-18 12:26:23 +0000 (Thu, 18 Jun 2015) $"
	revision    : "$Revision: 97484 $"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			storage: CMS_STORAGE_STORE_ODBC
		do
			-- Change the path.
			create connection.login_with_connection_string ("Driver=SQLite3 ODBC Driver;Database=./cms_lite.db;LongNames=0;Timeout=1000;NoTXN=0;SyncPragma=NORMAL;StepAPI=0;")
			create storage.make_with_driver (connection, "sqlite3")
		end

	connection: DATABASE_CONNECTION_ODBC

end
