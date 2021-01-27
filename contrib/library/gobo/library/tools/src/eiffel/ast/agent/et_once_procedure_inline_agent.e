note

	description:

		"Eiffel inline agents with a once-procedure as associated feature"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2007-2017, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class ET_ONCE_PROCEDURE_INLINE_AGENT

inherit

	ET_INTERNAL_PROCEDURE_INLINE_AGENT
		undefine
			is_once,
			is_once_per_process,
			is_once_per_thread,
			is_once_per_object
		end

	ET_ONCE_ROUTINE_INLINE_AGENT
		rename
			make as make_inline_agent
		end

create

	make

feature -- Processing

	process (a_processor: ET_AST_PROCESSOR)
			-- Process current node.
		do
			a_processor.process_once_procedure_inline_agent (Current)
		end

end
