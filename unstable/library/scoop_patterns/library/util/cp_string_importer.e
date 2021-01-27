note
	description: "Importer for STRING objects."
	author: "Roman Schmocker"
	date: "$Date: 2014-10-03 13:37:39 +0000 (Fri, 03 Oct 2014) $"
	revision: "$Revision: 95848 $"

class
	CP_STRING_IMPORTER

inherit
	CP_IMPORTER [STRING]

feature

	import (object: separate STRING): STRING
			-- <Precursor>
		do
			create Result.make_from_separate (object)
		end

end
