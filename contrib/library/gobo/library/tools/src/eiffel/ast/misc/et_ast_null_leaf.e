note

	description:

		"Eiffel AST leaf nodes with no characters"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2014, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ET_AST_NULL_LEAF

inherit

	ET_AST_LEAF
		redefine
			is_null
		end

create

	make
		
feature -- Status report

	is_null: BOOLEAN = True
			-- Is current leaf node empty?

feature -- Access

	last_position: ET_POSITION
			-- Position of last character of current node in source code;
			-- Null position is current node is empty
		do
			Result := Current
		end

feature -- Processing

	process (a_processor: ET_AST_PROCESSOR)
			-- Process current node.
		do
			a_processor.process_ast_null_leaf (Current)
		end

invariant

	is_null: is_null

end
