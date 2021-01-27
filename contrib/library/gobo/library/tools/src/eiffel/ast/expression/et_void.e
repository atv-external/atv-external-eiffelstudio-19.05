note

	description:

		"Eiffel Void entities"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2004-2016, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2017-04-11 18:34:55 +0000 (Tue, 11 Apr 2017) $"
	revision: "$Revision: 100137 $"

class ET_VOID

inherit

	ET_EXPRESSION
		undefine
			first_position,
			last_position,
			break
		end

	ET_KEYWORD
		rename
			make_void as make
		undefine
			is_current,
			is_false,
			is_true
		redefine
			process
		end

create

	make

feature -- Processing

	process (a_processor: ET_AST_PROCESSOR)
			-- Process current node.
		do
			a_processor.process_void (Current)
		end

invariant

	is_void: is_void

end
