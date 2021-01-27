note
	description: "Objects that call `iteration' on a separate CP_INTERMITTENT_PROCESS."
	author: "Roman Schmocker"
	date: "$Date: 2014-10-03 13:37:39 +0000 (Fri, 03 Oct 2014) $"
	revision: "$Revision: 95848 $"

class
	CP_PACEMAKER

inherit
	CP_STARTABLE

create
	make

feature {NONE} -- Initialization

	make (a_process: like process)
			-- Initialization for `Current'.
		do
			process := a_process
		end

feature -- Access

	process: separate CP_INTERMITTENT_PROCESS
			-- The separate process.

feature -- Basic operations

	start
			-- Call the separate procedure.
		do
			do_iteration (process)
		end

feature {NONE} -- Implementation

	do_iteration (a_process: like process)
			-- Call `a_process.iteration'.
		do
			a_process.iteration
		end

end
