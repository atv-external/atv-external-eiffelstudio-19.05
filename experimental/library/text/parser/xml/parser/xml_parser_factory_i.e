note
	description: "[
			Factory interface for XML parsers
		]"
	date: "$Date: 2013-06-03 23:53:45 +0000 (Mon, 03 Jun 2013) $"
	revision: "$Revision: 92667 $"

deferred class XML_PARSER_FACTORY_I

feature -- Status report

	is_parser_available: BOOLEAN
			-- Is XML parser available?
		deferred
		end

feature -- Access

	new_parser: XML_PARSER
			-- New XML parser
		require
			parser_available: is_parser_available
		deferred
		ensure
			parser_not_void: Result /= Void
		end

end
