note

	description:

		"Eiffel inline agents with a once routine as associated feature"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2011-2017, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

deferred class ET_ONCE_ROUTINE_INLINE_AGENT

inherit

	ET_INTERNAL_ROUTINE_INLINE_AGENT
		undefine
			is_once,
			is_once_per_process,
			is_once_per_thread,
			is_once_per_object
		end

	ET_ONCE_ROUTINE_CLOSURE
		rename
			arguments as formal_arguments
		end

end
