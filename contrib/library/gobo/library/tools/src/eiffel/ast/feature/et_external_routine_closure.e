note

	description:

		"Eiffel closures with components common to external routines"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2008-2014, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_EXTERNAL_ROUTINE_CLOSURE

inherit

	ET_ROUTINE_CLOSURE

feature -- Access

	language: ET_EXTERNAL_LANGUAGE
			-- External language

	alias_clause: detachable ET_EXTERNAL_ALIAS
			-- Alias clause

feature -- Setting

	set_alias_clause (an_alias: like alias_clause)
			-- Set `alias_clause' to `an_alias'.
		do
			alias_clause := an_alias
		ensure
			alias_clause_set: alias_clause = an_alias
		end

invariant

	language_not_void: language /= Void

end
