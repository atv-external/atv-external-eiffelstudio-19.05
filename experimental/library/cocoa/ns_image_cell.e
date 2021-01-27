note
	description: "Summary description for {NS_IMAGE_CELL}."
	author: "Daniel Furrer"
	date: "$Date: 2013-06-03 23:53:45 +0000 (Mon, 03 Jun 2013) $"
	revision: "$Revision: 92667 $"

class
	NS_IMAGE_CELL

inherit
	NS_CELL

create
	make

feature -- Creation

	make
		do
			make_from_pointer (new)
		end

feature {NONE} -- Implementation

	frozen new: POINTER
		external
			"C inline use <Cocoa/Cocoa.h>"
		alias
			"return [NSImageCell new];"
		end

end
