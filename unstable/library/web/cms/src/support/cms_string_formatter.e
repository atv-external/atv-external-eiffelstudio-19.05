note
	description: "Format a text using arguments."
	date: "$Date: 2015-05-13 15:40:03 +0000 (Wed, 13 May 2015) $"
	revision: "$Revision: 97287 $"

class
	CMS_STRING_FORMATTER

feature -- Conversion

	formatted_string (a_string: READABLE_STRING_GENERAL; args: TUPLE): STRING_32
		do
			Result := i18n_formatter.formatted_string (a_string, args)
		end

feature {NONE} -- Implementation

	i18n_formatter: I18N_STRING_FORMATTER
		once
			create Result
		end

end
