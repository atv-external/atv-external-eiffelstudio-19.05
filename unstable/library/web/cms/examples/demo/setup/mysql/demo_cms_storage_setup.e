note
	description: "Summary description for {DEMO_CMS_STORAGE_SETUP}."
	author: ""
	date: "$Date: 2018-10-16 16:24:03 +0000 (Tue, 16 Oct 2018) $"
	revision: "$Revision: 102325 $"

class
	DEMO_CMS_STORAGE_SETUP


feature -- Execution

	execute (a_setup: CMS_SETUP)
		do
			a_setup.storage_drivers.force (create {CMS_STORAGE_SQLITE3_BUILDER}.make, "sqlite3")
			a_setup.storage_drivers.force (create {CMS_STORAGE_STORE_MYSQL_BUILDER}.make, "mysql")
--			a_setup.storage_drivers.force (create {CMS_STORAGE_STORE_ODBC_BUILDER}.make, "odbc")
		end

end
