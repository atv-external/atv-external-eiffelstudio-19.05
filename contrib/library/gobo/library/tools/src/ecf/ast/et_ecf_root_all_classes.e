note

	description:

		"ECF all classes roots"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2008-2009, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ET_ECF_ROOT_ALL_CLASSES

inherit

	ET_ECF_ROOT

create

	make

feature {NONE} -- Initialization

	make
			-- Create a new all classes root.
		do
		end

feature -- Element change

	fill_root (a_system: ET_ECF_SYSTEM)
			-- Fill `a_system' with root information.
		do
			a_system.unset_root_type
			a_system.set_root_creation (Void)
		end

end
