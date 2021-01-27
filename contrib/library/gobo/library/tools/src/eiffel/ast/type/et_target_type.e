note

	description:

		"Eiffel types surrounded by braces"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2003-2010, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_TARGET_TYPE

inherit

	ET_AST_NODE

feature -- Access

	type: ET_TYPE
			-- Type
		deferred
		ensure
			type_not_void: Result /= Void
		end

end
