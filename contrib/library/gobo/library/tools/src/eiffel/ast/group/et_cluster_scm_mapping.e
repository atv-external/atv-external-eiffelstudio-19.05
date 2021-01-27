note

	description:

		"Cluster SCM mappings"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2008, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_CLUSTER_SCM_MAPPING

inherit

	HASHABLE

feature -- Access

	current_cluster: ET_CLUSTER
			-- Current cluster for which the SCM mapping
			-- have been specified

	hash_code: INTEGER
			-- Hash code value
		do
			Result := current_cluster.hash_code
		end

invariant

	current_cluster_not_void: current_cluster /= Void

end
