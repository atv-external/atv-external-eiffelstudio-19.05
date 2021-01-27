note
	description: "Summary description for {SHARED_DATABASE_API}."
	author: ""
	date: "$Date: 2017-03-07 13:26:26 +0000 (Tue, 07 Mar 2017) $"
	revision: "$Revision: 99933 $"

class
	SHARED_DATABASE_API

feature -- Access

	db_access: DATABASE_API
		once
			create Result.make
		end

note
	copyright: "2011-2012, Olivier Ligot, Jocelyn Fiat and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
end
