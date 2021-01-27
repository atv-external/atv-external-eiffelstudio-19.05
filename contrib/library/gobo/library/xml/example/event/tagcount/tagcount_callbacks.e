note

	description:

		"Tag count XML event consumer"

	library: "Gobo Eiffel XML Library"
	copyright: "Copyright (c) 2003-2013, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class TAGCOUNT_CALLBACKS

inherit

	XM_CALLBACKS_NULL
		redefine
			on_start,
			on_start_tag
		end

create

	make

feature -- Events

	on_start
			-- Reset tag count.
		do
			count := 0
		end

	on_start_tag (a_namespace: detachable STRING; a_prefix: detachable STRING; a_local_part: STRING)
			-- Count start tags.
		do
			count := count + 1
		end

feature -- Access

	count: INTEGER
			-- Number of tags seen

end
