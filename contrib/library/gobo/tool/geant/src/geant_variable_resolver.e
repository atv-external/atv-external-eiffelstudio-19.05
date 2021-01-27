note

	description:

		"Variable resolvers"

	library: "Gobo Eiffel Ant"
	copyright: "Copyright (c) 2004, Sven Ehrke and others"
	license: "MIT License"
	date: "$Date: 2017-04-11 17:45:00 +0000 (Tue, 11 Apr 2017) $"
	revision: "$Revision: 100135 $"

deferred class GEANT_VARIABLE_RESOLVER

inherit

	KL_VALUES [STRING, STRING]

feature -- Status report

	has (k: STRING): BOOLEAN
			-- Is there an item associated with `k'?
		require
			k_not_void: k /= Void
			k_not_empty: not k.is_empty
		deferred
		end

end
