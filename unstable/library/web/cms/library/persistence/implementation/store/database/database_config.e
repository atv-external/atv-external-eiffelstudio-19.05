note
	description: "Database configuration"
	date: "$Date: 2015-06-18 12:26:23 +0000 (Thu, 18 Jun 2015) $"
	revision: "$Revision: 97484 $"

deferred class
	DATABASE_CONFIG

feature -- Database access

	default_hostname: STRING = ""
			-- Database hostname.

	default_username: STRING = ""
			-- Database username.

	default_password: STRING = ""
			-- Database password.

	default_database_name: STRING = "EiffelDB"
			-- Database name.

	is_keep_connection: BOOLEAN
			-- Keep Connection to database?
		do
			Result := True
		end

end
