note

	description:

		"Eiffel formal arguments in semicolon-separated list of formal arguments"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_FORMAL_ARGUMENT_ITEM

inherit

	ET_ENTITY_DECLARATION

feature -- Access

	formal_argument: ET_FORMAL_ARGUMENT
			-- Formal argument in semicolon-separated list
		deferred
		ensure
			formal_argument_not_void: Result /= Void
		end

feature -- Duplication

	cloned_argument: like Current
			-- Cloned formal argument;
			-- Do not recursively clone the type
		deferred
		ensure
			argument_not_void: Result /= Void
		end

end
