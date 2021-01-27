note

	description:

		"Routines that ought to be in class HASHABLE"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 1999-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class KL_HASHABLE_ROUTINES

feature -- Access

	hash_value (an_any: ANY): INTEGER
			-- Hash code value
		require
			an_any_not_void: an_any /= Void
		do
			if attached {HASHABLE} an_any as hashable then
				Result := hashable.hash_code
			else
				Result := an_any.generating_type.hash_code
			end
		ensure
			instance_free: class
			hash_value_not_negative: Result >= 0
		end

end
