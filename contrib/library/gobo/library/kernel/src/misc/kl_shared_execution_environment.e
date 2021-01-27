note

	description:

		"Shared execution environment facilities"

	pattern: "Singleton"
	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 1999-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class KL_SHARED_EXECUTION_ENVIRONMENT

feature -- Access

	Execution_environment: KL_EXECUTION_ENVIRONMENT
			-- Execution environment
		once
			create Result
		ensure
			instance_free: class
			execution_environment_not_void: Result /= Void
		end

end
