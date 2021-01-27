note
	description: "[
				JSON serialization and deserialization based on reflexion mechanism.
		]"
	date: "$Date: 2016-08-01 07:11:38 +0000 (Mon, 01 Aug 2016) $"
	revision: "$Revision: 99097 $"

class
	JSON_REFLECTOR_SERIALIZATION

inherit
	JSON_REFLECTOR_SERIALIZER
		redefine
			default_create,
			reset
		end

	JSON_REFLECTOR_DESERIALIZER
		redefine
			default_create,
			reset
		end

create
	default_create

feature {NONE} -- Initialization

	default_create
		do
			Precursor {JSON_REFLECTOR_SERIALIZER}
			Precursor {JSON_REFLECTOR_DESERIALIZER}
		end

feature -- Cleaning

	reset
		do
			Precursor {JSON_REFLECTOR_SERIALIZER}
			Precursor {JSON_REFLECTOR_DESERIALIZER}
		end

note
	copyright: "2016-2016, Jocelyn Fiat and Eiffel Software"
	license: "Eiffel Forum License v2 (see https://www.eiffel.com/licensing/forum.txt)"
end
