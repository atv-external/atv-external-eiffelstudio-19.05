note

	description:

		"Expression roles"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XPATH_ROLE

feature -- Access

	Function_role: INTEGER = 1
	Binary_expression_role: INTEGER = 2
	Type_operation_role: INTEGER = 3
	Variable_role: INTEGER = 4
	Instruction_role: INTEGER = 5
	Function_result_role: INTEGER = 6
	Order_by_role: INTEGER = 7
	Template_result_role: INTEGER = 8

end

