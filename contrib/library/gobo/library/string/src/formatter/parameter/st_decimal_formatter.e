note

	description:

		"Formatters for integer parameters, $d or $i"

	library: "Gobo Eiffel String Library"
	copyright: "Copyright (c) 2004-2005, Object-Tools and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ST_DECIMAL_FORMATTER

inherit

	ST_INTEGER_FORMATTER

create

	make

feature -- Access

	base: INTEGER = 10
			-- Base used to format integer;
			-- 8 for octal, 10 for decimal, 16 for hexadecimal, ...

end
