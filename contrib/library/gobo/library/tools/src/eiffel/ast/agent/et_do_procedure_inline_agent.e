note

	description:

		"Eiffel inline agents with a do-procedure as associated feature"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2007, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ET_DO_PROCEDURE_INLINE_AGENT

inherit

	ET_INTERNAL_PROCEDURE_INLINE_AGENT

create

	make

feature -- Processing

	process (a_processor: ET_AST_PROCESSOR)
			-- Process current node.
		do
			a_processor.process_do_procedure_inline_agent (Current)
		end

end
