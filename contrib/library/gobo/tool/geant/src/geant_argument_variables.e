note

	description:

		"Argument variables for GEANT"

	library: "Gobo Eiffel Ant"
	copyright:"Copyright (c) 2005, Sven Ehrke and others"
	license:"MIT License"
	date: "$Date: 2017-04-11 17:45:00 +0000 (Tue, 11 Apr 2017) $"
	revision:"$Revision: 100135 $"

class GEANT_ARGUMENT_VARIABLES

inherit

	GEANT_VARIABLES

create

	make

feature -- Status report

	has_numbered_keys: BOOLEAN
			-- Do entries exist which indicate that Current contains only numbered entries?
		do
			Result := has ("1")
		ensure
			definition: Result implies has ("1")
		end

end
