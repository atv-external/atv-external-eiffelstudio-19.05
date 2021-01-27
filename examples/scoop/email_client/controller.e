note
	description: "Third-party controller used to signal a stop message."
	author: "Chandrakana Nandi"
	date: "$Date: 2015-07-06 12:27:01 +0000 (Mon, 06 Jul 2015) $"
	revision: "$Revision: 97653 $"

class
	CONTROLLER

feature -- Status report

	is_over: BOOLEAN
			-- Should the email client stop its execution?

feature -- Basic operations

	stop
			-- Record request to stop execution.
		do
			is_over := True
		end

end
