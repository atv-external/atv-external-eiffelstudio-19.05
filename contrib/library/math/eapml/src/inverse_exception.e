note
	description: "An exception when an {INTEGER_X} doesn't have a modular inverse"
	author: "Colin LeMahieu"
	date: "$Date: 2013-01-23 14:05:11 +0000 (Wed, 23 Jan 2013) $"
	revision: "$Revision: 90816 $"
	quote: "Whenever they burn books they will also, in the end, burn human beings. -  Heinrich Heine (1797-1856), Almansor: A Tragedy, 1823"

class
	INVERSE_EXCEPTION

inherit
	DEVELOPER_EXCEPTION
		redefine
			tag
		end

feature -- Access

	tag: IMMUTABLE_STRING_32
		once
			create Result.make_from_string_8 ("No modular inverse.")
		end

end
