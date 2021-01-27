note

	description:

		"Hash-code functions"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2007, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class KL_HASH_FUNCTION [G]

feature -- Access

	hash_code (v: G): INTEGER
			-- Hash code for `v'
		require
			v_not_void: v /= Void
		deferred
		ensure
			hash_code_not_negative: Result >= 0
		end

end
