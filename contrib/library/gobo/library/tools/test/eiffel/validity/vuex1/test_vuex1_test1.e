note

	description:

		"Test for validity rule VUEX-1"

	remark: "[
		In this test we call `a' in an inline agent, but `a' is a formal argument
		of the enclosing feature.

		ECMA 367-2 gives the choice between two validity rules:
		VPIR-2, section 8.27.11 p.136: "Validity: Inline Agent Requirements"
			An Inline_agent 'a' must satisfy the following conditions:
			2. Every entity appearing in the Attribute_or_routine part of
			   'a' is the name of one of: a formal argument of 'a'; a local
			   variable of 'a'; a feature of the enclosing class; 'Current'.
		VUEX-1, section 8.23.11 p.122: "Validity: Export rule"
			An Object_call appearing in a class C, with `fname' as the feature
			of the call, is export-valid for C if and only if it satisfies
			the following conditions.
			1. `fname' is the final name of a feature of the target type of the call.

		Gobo reports a VUEX-1 error. Note that ISE reports a VEEN error.
	]"

	copyright: "Copyright (c) 2008-2017, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

class TEST_VUEX1_TEST1

inherit

	EIFFEL_TEST_CASE

create

	make_default

feature -- Test

	test_validity
			-- Test for validity rule VUEX-1.
		do
			compile_and_test ("test1")
		end

feature {NONE} -- Implementation

	rule_dirname: STRING
			-- Name of the directory containing the tests of the rule being tested
		do
			Result := file_system.nested_pathname ("${GOBO}", <<"library", "tools", "test", "eiffel", "validity", "vuex1">>)
			Result := Execution_environment.interpreted_string (Result)
		end

	testdir: STRING
			-- Name of temporary directory where to run the test
		do
			Result := "Ttest1"
		end

end

