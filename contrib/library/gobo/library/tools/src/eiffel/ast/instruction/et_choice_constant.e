note

	description:

		"Eiffel choice constants in when parts of inspect instructions"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2002-2004, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_CHOICE_CONSTANT

inherit

	ET_CHOICE

	ET_EXPRESSION
		undefine
			reset
		end

feature -- Access

	lower: ET_CHOICE_CONSTANT
			-- Lower bound
		do
			Result := Current
		end

	upper: ET_CHOICE_CONSTANT
			-- Upper bound
		do
			Result := Current
		end

end
