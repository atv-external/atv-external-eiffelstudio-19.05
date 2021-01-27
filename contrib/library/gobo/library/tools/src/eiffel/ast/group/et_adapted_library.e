note

	description:

		"Eiffel adapted class libraries"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2008-2011, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ET_ADAPTED_LIBRARY

inherit

	ET_ADAPTED_UNIVERSE
		rename
			universe as library
		redefine
			library
		end

	ET_ADAPTED_GROUP
		rename
			group as library
		undefine
			lower_name
		end

create

	make

feature -- Access

	library: ET_LIBRARY
			-- Eiffel library being adapted

end
