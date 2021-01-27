note

	description:

		"The source of an XML document that has been retrieved via an URI"

	library: "Gobo Eiffel XML Library"
	copyright: "Copyright (c) 2001, Andreas Leitner and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_DEFAULT_URI_SOURCE

inherit

	XM_URI_SOURCE

create

	make

feature {NONE} -- Initialization

	make (a_uri: STRING)
			-- Create a new URI.
		require
			a_uri_not_void: a_uri /= Void
		do
			uri := a_uri
		ensure
			uri_set: uri = a_uri
		end

feature -- Access

	uri: STRING
			-- URI for the source of the XML document

end
