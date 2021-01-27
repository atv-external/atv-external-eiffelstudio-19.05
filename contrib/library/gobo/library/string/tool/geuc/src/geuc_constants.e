note

	description:

		"Unicode constants"

	copyright: "Copyright (c) 2005, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2017-04-11 17:45:00 +0000 (Tue, 11 Apr 2017) $"
	revision: "$Revision: 100135 $"

class GEUC_CONSTANTS

inherit

	UC_UNICODE_CONSTANTS

feature -- Access

	Field_count: INTEGER = 15
			-- Number of fields in UnicodeData.txt

	Bad_decimal_value: INTEGER_8 = 127
			-- Decimal value for code points which are not category Nd

end
