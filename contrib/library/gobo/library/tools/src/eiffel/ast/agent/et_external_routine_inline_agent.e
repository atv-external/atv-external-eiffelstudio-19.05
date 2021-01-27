note

	description:

		"Eiffel inline agents with an external routine as associated feature"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2007-2008, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_EXTERNAL_ROUTINE_INLINE_AGENT

inherit

	ET_ROUTINE_INLINE_AGENT

	ET_EXTERNAL_ROUTINE_CLOSURE
		rename
			arguments as formal_arguments
		end

end
