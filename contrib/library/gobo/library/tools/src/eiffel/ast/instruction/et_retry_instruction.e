note

	description:

		"Eiffel retry instructions"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 1999-2014, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ET_RETRY_INSTRUCTION

inherit

	ET_INSTRUCTION
		undefine
			first_position,
			last_position,
			break
		end

	ET_KEYWORD
		rename
			make_retry as make
		redefine
			process
		end

create

	make

feature -- Processing

	process (a_processor: ET_AST_PROCESSOR)
			-- Process current node.
		do
			a_processor.process_retry_instruction (Current)
		end

invariant

	is_retry: is_retry

end
