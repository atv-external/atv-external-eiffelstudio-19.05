note
	description: "[
			JSON serializer and JSON deserializer implementation for APP_GROUP objects.
		]"
	date: "$Date: 2016-08-01 07:11:38 +0000 (Mon, 01 Aug 2016) $"
	revision: "$Revision: 99097 $"

class
	TEAM_JSON_SERIALIZATION

inherit
	TEAM_JSON_SERIALIZER
		redefine
			reset
		end
	TEAM_JSON_DESERIALIZER
		redefine
			reset
		end

feature -- Cleaning

	reset
			-- <Precursor>
		do
			Precursor {TEAM_JSON_SERIALIZER}
			Precursor {TEAM_JSON_DESERIALIZER}
		end

end
