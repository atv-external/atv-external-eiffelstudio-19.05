note
	description: "Summary description for {TEST_TWITTER_COMMON}."
	author: ""
	date: "$Date: 2018-11-16 13:29:33 +0000 (Fri, 16 Nov 2018) $"
	revision: "$Revision: 102478 $"

class
	TEST_TWITTER_COMMON

inherit
	EQA_TEST_SET


feature -- JSON Parse

	parsed_json (a_json_text: STRING): detachable JSON_VALUE
		local
			j: JSON_PARSER
		do
			create j.make_with_string (a_json_text)
			j.parse_content
			Result := j.parsed_json_value
		end
end
