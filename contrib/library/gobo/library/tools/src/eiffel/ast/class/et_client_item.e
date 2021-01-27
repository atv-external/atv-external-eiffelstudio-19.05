note

	description:

		"Eiffel clients which appear in a comma-separated list of clients"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2008, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_CLIENT_ITEM

inherit

	ET_AST_NODE

feature -- Access

	client: ET_CLIENT
			-- Client in comma-separated list
		deferred
		ensure
			client_not_void: Result /= Void
		end

	name: ET_CLASS_NAME
			-- Name of client
		do
			Result := client.name
		ensure
			definition: Result = client.name
		end

	base_class: ET_CLASS
			-- Base class of client
		do
			Result := client.base_class
		ensure
			definition: Result = client.base_class
		end

end
