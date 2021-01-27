note

	description:

		"Eiffel creation calls"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2016, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2017-04-11 18:34:55 +0000 (Tue, 11 Apr 2017) $"
	revision: "$Revision: 100137 $"

deferred class ET_CREATION_CALL

inherit

	ET_CALL_WITH_ACTUAL_ARGUMENTS
		redefine
			name
		end

feature -- Access

	name: ET_FEATURE_NAME
			-- Creation procedure name
		deferred
		end

end
