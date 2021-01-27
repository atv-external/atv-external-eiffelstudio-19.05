note

	description:

		"ECF Eiffel cluster lists"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2006, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ET_ECF_CLUSTERS

inherit

	ET_CLUSTERS
		redefine
			cluster
		end

create

	make, make_empty

feature -- Access

	cluster (i: INTEGER): ET_ECF_CLUSTER
			-- `i'-th cluster
		do
			Result := clusters.item (i)
		end

end
