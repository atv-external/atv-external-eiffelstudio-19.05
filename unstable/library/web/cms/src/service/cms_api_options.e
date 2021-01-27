note
	description: "Summary description for {CMS_API_OPTIONS}."
	author: ""
	date: "$Date: 2015-06-02 14:12:42 +0000 (Tue, 02 Jun 2015) $"
	revision: "$Revision: 97420 $"

class
	CMS_API_OPTIONS

inherit
	WSF_API_OPTIONS

create
	make,
	make_from_manifest

convert
	make_from_manifest ({ ARRAY [TUPLE [key: STRING; value: detachable ANY]],
						  ARRAY [TUPLE [STRING_8, ARRAY [TUPLE [STRING_8, STRING_32]]]],
						  ARRAY [TUPLE [STRING_8, ARRAY [TUPLE [STRING_8, STRING_8]]]]
						})

end
