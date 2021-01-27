note

	description:

		"Objects that provide shared access to a singleton catalog manager"

	library: "Gobo Eiffel XML Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_SHARED_CATALOG_MANAGER

feature -- Access

	shared_catalog_manager: XM_CATALOG_MANAGER
			-- Shared catalog manager
		once
			create Result.make
		ensure
			shared_catalog_manager_not_void: Result /= Void
		end

end

