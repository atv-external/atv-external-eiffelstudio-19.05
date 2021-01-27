note
	description: "Session manager access"
	date: "$Date: 2013-06-03 23:53:45 +0000 (Mon, 03 Jun 2013) $"
	revision: "$Revision: 92667 $"

class
	DATABASE_SESSION_MANAGER_ACCESS

feature -- Access

	manager: DATABASE_SESSION_MANAGER
			-- The session manager
		once
			create Result
		end

end
