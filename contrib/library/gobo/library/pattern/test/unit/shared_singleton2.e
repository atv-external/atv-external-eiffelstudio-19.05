note

	description:

		"Shared singleton2"

	library: "Gobo Eiffel Pattern Library"
	copyright: "Copyright (c) 2003-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

class SHARED_SINGLETON2

feature -- Access

	singleton2: SINGLETON2
			-- Singleton object
		do
			if attached singleton2_cell.item as l_singleton2 then
				Result := l_singleton2
			else
				create Result.make
				singleton2_cell.put (Result)
			end
		ensure
			singleton2_created: singleton2_created
			singleton2_not_void: Result /= Void
		end

feature -- Status report

	singleton2_created: BOOLEAN
			-- Has singleton already been created?
		do
			Result := singleton2_cell.item /= Void
		end

feature {NONE} -- Implementation

	singleton2_cell: DS_CELL [detachable SINGLETON2]
			-- Cell containing the singleton if already created
		once
			create Result.make (Void)
		ensure
			cell_not_void: Result /= Void
		end

end
