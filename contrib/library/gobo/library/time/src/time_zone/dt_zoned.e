note

	description:

		"Objects that pair an absolute time with a time zone"

	library: "Gobo Eiffel Time Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class DT_ZONED

feature -- Access

	time_zone: DT_TIME_ZONE
			-- Time zone

invariant

	time_zone_not_void: time_zone /= Void

end
