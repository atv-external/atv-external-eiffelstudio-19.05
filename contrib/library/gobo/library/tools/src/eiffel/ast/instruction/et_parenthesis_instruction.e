note

	description:

	"[
		Eiffel parenthesis call instructions (call to the feature asociated with 'alias "()").
	]"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2016, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2017-04-11 18:34:55 +0000 (Tue, 11 Apr 2017) $"
	revision: "$Revision: 100137 $"

class ET_PARENTHESIS_INSTRUCTION

inherit

	ET_PARENTHESIS_CALL

	ET_QUALIFIED_FEATURE_CALL_INSTRUCTION
		undefine
			reset
		end

create

	make

feature -- Processing

	process (a_processor: ET_AST_PROCESSOR)
			-- Process current node.
		do
			a_processor.process_parenthesis_instruction (Current)
		end

end
