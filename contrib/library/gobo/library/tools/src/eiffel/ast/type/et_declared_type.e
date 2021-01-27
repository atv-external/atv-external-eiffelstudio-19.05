note

	description:

		"Eiffel entity declared types"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2002-2010, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_DECLARED_TYPE

inherit

	ET_AST_NODE

feature -- Access

	type: ET_TYPE
			-- Declared type
		deferred
		ensure
			type_not_void: Result /= Void
		end

end
