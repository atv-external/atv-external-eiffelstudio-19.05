note

	description:

		"ECF root classes and creation procedures"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2008, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_ECF_ROOT

feature -- Element change

	fill_root (a_system: ET_ECF_SYSTEM)
			-- Fill `a_system' with root information.
		require
			a_system_not_void: a_system /= Void
		deferred
		end

end
