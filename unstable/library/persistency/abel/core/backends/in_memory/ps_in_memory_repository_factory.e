note
	description: "A factory class for creating in-memory repositories."
	author: "Roman Schmocker, Marco Piccioni"
	date: "$Date: 2014-01-03 01:59:54 +0000 (Fri, 03 Jan 2014) $"
	revision: "$Revision: 93884 $"

class
	PS_IN_MEMORY_REPOSITORY_FACTORY

inherit
	PS_REPOSITORY_FACTORY
		redefine
			make
		end

create
	make, make_uninitialized

feature {NONE} -- Initialization

	make
			-- <Precursor>
		do
			make_uninitialized

			internal_handlers.extend (create {PS_STRING_HANDLER})
			internal_handlers.extend (create {PS_TUPLE_HANDLER})
			internal_handlers.extend (create {PS_SPECIAL_HANDLER})
			internal_handlers.extend (create {PS_DEFAULT_OBJECT_HANDLER})
		end

feature -- Status report

	is_buildable: BOOLEAN = True
			-- <Precursor>

feature {NONE} -- Implmentation

	new_connector: PS_REPOSITORY_CONNECTOR
			-- <Precursor>
		do
			create {PS_IN_MEMORY_BACKEND} Result.make
		end

end
