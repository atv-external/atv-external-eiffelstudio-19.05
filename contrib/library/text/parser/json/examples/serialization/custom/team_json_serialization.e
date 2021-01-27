note
	description: "[
			JSON serializer and JSON deserializer implementation for APP_GROUP objects.
		]"
	date: "$Date: 2018-11-14 11:33:00 +0000 (Wed, 14 Nov 2018) $"
	revision: "$Revision: 102453 $"

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
