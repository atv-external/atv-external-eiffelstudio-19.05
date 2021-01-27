note
	description: "Dummy class to restrict export of internal features."
	author: "Roman schmocker"
	date: "$Date: 2014-01-03 01:59:54 +0000 (Fri, 03 Jan 2014) $"
	revision: "$Revision: 93884 $"

class
	PS_ABEL_EXPORT

inherit

	REFACTORING_HELPER
		export {NONE}
			--to_implement_assertion,
			fixme,
			to_implement
		end
end
