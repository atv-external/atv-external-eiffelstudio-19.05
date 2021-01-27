note

	description:

		"Lace Eiffel systems"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2001-2008, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ET_LACE_SYSTEM

inherit

	ET_SYSTEM
		redefine
			clusters
		end

create

	make

feature -- Access

	clusters: ET_LACE_CLUSTERS
			-- Clusters

end
