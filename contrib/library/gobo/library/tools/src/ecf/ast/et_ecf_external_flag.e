note

	description:

		"ECF flags to be passed for external compilations"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2017, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

deferred class ET_ECF_EXTERNAL_FLAG

inherit

	ET_ECF_EXTERNAL_VALUE
		rename
			value as flag
		end

end
