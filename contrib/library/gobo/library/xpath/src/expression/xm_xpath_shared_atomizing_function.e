note

	description:

		"Objects that provide shared access to an atomizing function"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2005, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XPATH_SHARED_ATOMIZING_FUNCTION

feature -- Access

	shared_atomizing_function: XM_XPATH_ATOMIZING_FUNCTION
			-- Shared object
		once
			create Result.make
		ensure
			result_not_void: Result /= Void
		end

end


