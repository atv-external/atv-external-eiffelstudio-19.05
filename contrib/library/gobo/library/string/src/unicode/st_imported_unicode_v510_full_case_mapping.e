note

	description:

		"Imported case mapping routine for Unicode version 5.1.0s"

	library: "Gobo Eiffel String Library"
	copyright: "Copyright (c) 2008-2018, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class ST_IMPORTED_UNICODE_V510_FULL_CASE_MAPPING

feature -- Access

	case_mapping_v510: ST_UNICODE_V510_FULL_CASE_MAPPING
			-- Unicode V5.1.0 full case mapping routines
		once
			create Result
		ensure
			instance_free: class
			case_mapping_v510_not_void: Result /= Void
		end

end
