note

	description:

		"Eiffel agent actual arguments"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_AGENT_ARGUMENT_OPERAND

inherit

	ET_ARGUMENT_OPERAND

	ET_AGENT_ARGUMENT_OPERAND_ITEM

feature -- Access

	agent_actual_argument: ET_AGENT_ARGUMENT_OPERAND
			-- Agent actual argument in comma-separated list
		do
			Result := Current
		end

end
