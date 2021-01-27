note

	description:

		"Eiffel qualified feature calls"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2014, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_QUALIFIED_FEATURE_CALL

inherit

	ET_FEATURE_CALL
		redefine
			target,
			is_qualified_call
		end

feature -- Access

	target: ET_EXPRESSION
			-- Target
		deferred
		ensure then
			target_not_void: Result /= Void
		end

feature -- Status report

	is_qualified_call: BOOLEAN = True
			-- Is current call qualified?

invariant

	qualified_call: is_qualified_call
	
end
