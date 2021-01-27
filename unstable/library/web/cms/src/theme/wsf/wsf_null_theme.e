note
	description: " Null theme for void-safety purpose."
	date: "$Date: 2015-05-20 09:48:26 +0000 (Wed, 20 May 2015) $"
	revision: "$Revision: 97327 $"

class
	WSF_NULL_THEME

inherit
	WSF_THEME

create
	make

feature {NONE} -- Initialization

	make
		do
		end

feature -- Core

	site_url: STRING = ""

	base_url: detachable READABLE_STRING_8
			-- Base url if any.
		do
		end

end
