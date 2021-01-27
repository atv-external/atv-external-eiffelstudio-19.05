note
	description: "Helper class to start a separate CP_STARTABLE."
	author: "Roman Schmocker"
	date: "$Date: 2014-10-03 13:37:39 +0000 (Fri, 03 Oct 2014) $"
	revision: "$Revision: 95848 $"

class
	CP_STARTABLE_UTILS

feature -- Basic operations

	async_start (a_startable: separate CP_STARTABLE)
			-- Start the separate `a_startable' object.
		do
			a_startable.start
		end

end
