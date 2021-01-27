note

	description:

		"Queries (functions or attributes) implemented in .NET"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2006-2017, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

deferred class ET_DOTNET_QUERY

inherit

	ET_QUERY
		undefine
			is_frozen, is_dotnet,
			is_static,
			overloaded_extended_name
		end

	ET_DOTNET_FEATURE
		undefine
			reset, type
		end

end
