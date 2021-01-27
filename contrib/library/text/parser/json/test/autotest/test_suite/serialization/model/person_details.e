note
	description: "Summary description for {PERSON_DETAILS}."
	author: ""
	date: "$Date: 2016-08-01 07:11:38 +0000 (Mon, 01 Aug 2016) $"
	revision: "$Revision: 99097 $"

class
	PERSON_DETAILS

feature -- Access

	city_name: detachable IMMUTABLE_STRING_32

	zip: INTEGER

	country: detachable IMMUTABLE_STRING_32

feature -- Element change

	set_zip (a_zip: INTEGER)
		do
			zip := a_zip
		end

	set_country (s: detachable READABLE_STRING_GENERAL)
		do
			if s = Void then
				country := Void
			else
				create country.make_from_string_general (s)
			end
		end

	set_city_name (s: detachable READABLE_STRING_GENERAL)
		do
			if s = Void then
				city_name := Void
			else
				create city_name.make_from_string_general (s)
			end
		end

end
