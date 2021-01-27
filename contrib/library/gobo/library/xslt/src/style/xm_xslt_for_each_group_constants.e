note

	description:

		"Constants for xsl:for-each-group element nodes"

	library: "Gobo Eiffel XSLT Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XSLT_FOR_EACH_GROUP_CONSTANTS

feature -- Access

	Group_by_algorithm: INTEGER = 1
	Group_adjacent_algorithm: INTEGER = 2
	Group_starting_with_algorithm: INTEGER = 3
	Group_ending_with_algorithm: INTEGER = 4

end
