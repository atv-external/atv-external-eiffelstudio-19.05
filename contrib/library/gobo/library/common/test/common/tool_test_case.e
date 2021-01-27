note

	description:

		"Tools test cases"

	copyright: "Copyright (c) 2001-2016, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

deferred class TOOL_TEST_CASE

inherit

	PROGRAM_TEST_CASE

feature {NONE} -- Implementation

	program_dirname: STRING
			-- Name of program source directory
		do
			Result := file_system.nested_pathname ("${GOBO}", <<"tool", program_name, "src">>)
			Result := Execution_environment.interpreted_string (Result)
		end

end
