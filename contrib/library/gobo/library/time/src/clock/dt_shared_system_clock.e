note

	description:

		"Shared system clocks"

	pattern: "Singleton"
	library: "Gobo Eiffel Time Library"
	copyright: "Copyright (c) 2001-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class DT_SHARED_SYSTEM_CLOCK

feature -- Access

	system_clock: DT_SYSTEM_CLOCK
			-- Local system clock
		once
			create Result.make
		ensure
			instance_free: class
			system_clock_not_void: Result /= Void
		end

	utc_system_clock: DT_UTC_SYSTEM_CLOCK
			-- UTC system clock
		once
			create Result.make
		ensure
			instance_free: class
			utc_system_clock_not_void: Result /= Void
		end

end
