note

	description:

		"Shared formatters"

	library: "Gobo Eiffel String Library"
	copyright: "Copyright (c) 2004-2018, Berend de Boer and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class ST_SHARED_FORMATTERS

feature -- Access

	formatter: ST_SCIENTIFIC_FORMATTER
			-- Shared scientific formatter
		once
			Result := scientific_formatter
		ensure
			instance_free: class
			formatter_not_void: Result /= Void
		end

	scientific_formatter: ST_SCIENTIFIC_FORMATTER
			-- Shared scientific formatter
		once
			create Result.make
		ensure
			instance_free: class
			scientific_formatter_not_void: Result /= Void
		end

end
