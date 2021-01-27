note

	description:

		"VTCG test cases"

	copyright: "Copyright (c) 2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

deferred class TEST_VTCG

inherit

	GELINT_TEST_CASE

feature -- Test

	test_1
			-- Test #1.
		do
			compile_and_test ("test1")
		end

feature {NONE} -- Implementation

	rule_dirname: STRING
			-- Name of the directory containing the tests of the rule being tested
		once
			Result := file_system.nested_pathname ("${GOBO}", <<"test", "gelint", "validity", "vtcg">>)
			Result := Execution_environment.interpreted_string (Result)
		end

end
