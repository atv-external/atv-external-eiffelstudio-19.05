note
	description: "Summary description for {WSF_URL_API_OPTIONS}."
	author: ""
	date: "$Date: 2013-05-20 13:34:55 +0000 (Mon, 20 May 2013) $"
	revision: "$Revision: 92549 $"

class
	WSF_URL_API_OPTIONS

inherit
	WSF_API_OPTIONS

create
	make,
	make_absolute

feature {NONE} -- Initialization

	make_absolute
		do
			make (1)
			force (True, "absolute")
		end

end
