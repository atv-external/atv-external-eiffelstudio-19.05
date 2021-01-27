note
	description: "Wrapper for the NSCopying Protocol. Wrapper classes for classes that support NSCopying inherit from this class in Eiffel."
	author: "Daniel Furrer"
	date: "$Date: 2013-06-03 23:53:45 +0000 (Mon, 03 Jun 2013) $"
	revision: "$Revision: 92667 $"

class
	NS_COPYING

inherit
	NS_OBJECT
		redefine
			copy
		end

feature -- Duplication

	copy (other: like Current)
			-- Make a copy of the underlying Objective-C object
		do
			make_from_pointer ({NS_OBJECT_API}.copy (other.item))
		end

end
