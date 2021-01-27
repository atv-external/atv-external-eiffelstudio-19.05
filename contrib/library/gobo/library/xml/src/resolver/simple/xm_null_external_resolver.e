note

	description:

		"Null resolver that always fails"

	library: "Gobo Eiffel XML Library"
	copyright: "Copyright (c) 2002-2014, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_NULL_EXTERNAL_RESOLVER

inherit

	XM_EXTERNAL_RESOLVER

feature -- Action(s)

	resolve (a_system: STRING)
			-- Fails.
		do
		ensure then
			fails: has_error
		end

feature -- Result

	has_error: BOOLEAN
			-- Always true
		do
			Result := True
		ensure then
			fails: Result
		end

	last_error: detachable STRING
			-- Error message.
		do
			Result := "external entities not supported"
		end

	last_stream: detachable KI_CHARACTER_INPUT_STREAM
			-- Not used.
		do
		end

end
