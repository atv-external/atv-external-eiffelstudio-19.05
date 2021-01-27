note
	description: "Summary description for {NS_IMAGE_CONSTANTS}."
	author: "Daniel Furrer"
	date: "$Date: 2013-06-03 23:53:45 +0000 (Mon, 03 Jun 2013) $"
	revision: "$Revision: 92667 $"

class
	NS_IMAGE_CONSTANTS

feature -- Access

	image_name_info: NS_STRING
		once
			create Result.make_weak_from_pointer ({NS_IMAGE}.image_name_info)
		end

end
