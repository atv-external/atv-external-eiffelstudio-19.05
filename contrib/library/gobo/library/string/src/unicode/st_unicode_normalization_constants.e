note

	description:

		"Constants for normalizing Unicode strings"

	library: "Gobo Eiffel String Library"
	copyright: "Copyright (c) 2006, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ST_UNICODE_NORMALIZATION_CONSTANTS

feature -- Constants

	Nfd: INTEGER = 0
			-- Normal forms

	Nfc: INTEGER = 1
			-- Normal forms

	Nfkd: INTEGER = 2
			-- Normal forms

	Nfkc: INTEGER = 3
			-- Normal forms

end
