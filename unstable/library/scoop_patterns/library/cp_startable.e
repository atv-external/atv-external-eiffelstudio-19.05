note
	description: "Objects that define an operation which may be invoked asynchronously."
	author: "Roman Schmocker"
	date: "$Date: 2014-10-03 13:37:39 +0000 (Fri, 03 Oct 2014) $"
	revision: "$Revision: 95848 $"

deferred class
	CP_STARTABLE

feature -- Basic operations

	start
			-- Launch the operation defined in `Current'.
		deferred
		end

end
