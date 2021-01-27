note
	description: "Summary description for {ENTITY}."
	author: ""
	date: "$Date: 2016-08-01 07:11:38 +0000 (Mon, 01 Aug 2016) $"
	revision: "$Revision: 99097 $"

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
