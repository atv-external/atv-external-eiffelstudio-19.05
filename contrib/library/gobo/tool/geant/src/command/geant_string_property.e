note

	description:

		"STRING properties for Geant tasks and commands"

	library: "Gobo Eiffel Ant"
	copyright: "Copyright (c) 2008, Sven Ehrke and others"
	license: "MIT License"
	date: "$Date: 2017-04-11 17:45:00 +0000 (Tue, 11 Apr 2017) $"
	revision: "$Revision: 100135 $"

class GEANT_STRING_PROPERTY

inherit

	GEANT_PROPERTY [STRING]

create

	make

feature -- Access

	value: STRING
			-- String value
		do
			Result := string_value
		end

end
