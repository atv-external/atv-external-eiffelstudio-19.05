note

	description:

		"Eiffel types which appear in a comma-separated list of types"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_TYPE_ITEM

inherit

	ET_AST_NODE

feature -- Access

	type: ET_TYPE
			-- Type in comma-separated list
		deferred
		ensure
			type_not_void: Result /= Void
		end

end
