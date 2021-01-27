note
	description: "Summary description for {ENTITY}."
	author: ""
	date: "$Date: 2018-11-14 11:33:00 +0000 (Wed, 14 Nov 2018) $"
	revision: "$Revision: 102453 $"

deferred class
	ENTITY

inherit
	DEBUG_OUTPUT

feature -- Access

	name: READABLE_STRING_32
		deferred
		end

feature -- Status report

	debug_output: READABLE_STRING_GENERAL
			-- String that should be displayed in debugger to represent `Current'.
		do
			Result := name
		end

end
