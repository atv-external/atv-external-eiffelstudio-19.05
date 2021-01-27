note

	description:

		"Unicode routines which apply to a specific version"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2006-2018, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

deferred class UC_UNICODE_VERSIONING

feature -- Access

	major_version: INTEGER
			-- Major version number of Unicode
		deferred
		ensure
			instance_free: class
			major_version_strictly_positive: Result > 0
		end

	minor_version: INTEGER
			-- Minor version number of Unicode
		deferred
		ensure
			instance_free: class
			minor_version_non_negative: Result >= 0
			single_digit: Result < 10
		end

	update_version: INTEGER
			-- Update version number of Unicode
		deferred
		ensure
			instance_free: class
			update_version_non_negative: Result >= 0
			single_digit: Result < 10
		end

end
