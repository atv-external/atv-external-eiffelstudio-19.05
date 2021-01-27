note
	description: "Factory for new worker objects."
	author: "Roman Schmocker"
	date: "$Date: 2014-10-03 13:37:39 +0000 (Fri, 03 Oct 2014) $"
	revision: "$Revision: 95848 $"

deferred class
	CP_WORKER_FACTORY [G, IMPORTER -> CP_IMPORT_STRATEGY [G] create default_create end]

feature -- Factory functions

	new_worker (a_pool: separate CP_WORKER_POOL [G, IMPORTER]): separate CP_WORKER [G, IMPORTER]
			-- Create a new worker belonging to `a_pool'.
		deferred
		end

end
