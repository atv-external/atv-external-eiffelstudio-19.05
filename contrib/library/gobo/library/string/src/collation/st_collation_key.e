note

	description:

		"Objects that represent STRINGs for comparison"

	remark: "If two STRINGs are equal, then their collation keys are equal, and vice versa."
	library: "Gobo Eiffel String Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ST_COLLATION_KEY

inherit

	HASHABLE

	KL_IMPORTED_ANY_ROUTINES

feature -- Access

	source: STRING
			-- Associated string
		deferred
		ensure
			source_string_not_void: Result /= Void
		end

	hash_code: INTEGER
			-- Hash code value
		do
			Result := source.hash_code
		end

feature -- Comparison

	three_way_comparison (other: like Current): INTEGER
			-- Comparison of `Current' with `other'
		require
			other_key_not_void: other /= Void
			same_type: ANY_.same_types (Current, other)
		deferred
		ensure
			three_way_comparison: Result >= -1 and Result <= 1
		end

end
