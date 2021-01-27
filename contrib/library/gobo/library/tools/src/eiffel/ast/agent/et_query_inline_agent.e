note

	description:

		"Eiffel inline agents with a query (function or attribute) as associated feature"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2007, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_QUERY_INLINE_AGENT

inherit

	ET_INLINE_AGENT
		redefine
			type,
			implicit_result
		end

feature -- Access

	type: ET_TYPE
			-- Return type
		do
			Result := declared_type.type
		ensure then
			type_not_void: Result /= Void
		end

	declared_type: ET_DECLARED_TYPE
			-- Declared type (type preceded by a colon)

	implicit_result: ET_RESULT
			-- Fictitious node corresponding to the result of the
			-- associated feature when it's a query

invariant

	declared_type_not_void: declared_type /= Void
	implicit_result_not_void: implicit_result /= Void

end
