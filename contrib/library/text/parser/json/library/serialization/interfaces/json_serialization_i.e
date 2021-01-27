note
	description: "Common ancestor for {JSON_SERIALIZER and JSON_DESERIALIZER}."
	date: "$Date: 2016-08-01 07:11:38 +0000 (Mon, 01 Aug 2016) $"
	revision: "$Revision: 99097 $"

deferred class
	JSON_SERIALIZATION_I

feature -- Cleaning

	reset
			-- Clean any temporary data.
			--| Redefine in descendants.
		do
		end

note
	copyright: "2016-2016, Jocelyn Fiat and Eiffel Software"
	license: "Eiffel Forum License v2 (see https://www.eiffel.com/licensing/forum.txt)"
end
