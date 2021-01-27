note

	description:

		"Eiffel lists of actual generic parameters that appear %
		%in constraints of formal generic parameters. The names %
		%of the types have not been resolved yet, they may be %
		%names of classes or of formal generic parameters."

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2003-2010, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ET_CONSTRAINT_ACTUAL_PARAMETER_LIST

inherit

	ET_HEAD_LIST [ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM]
		redefine
			make, make_with_capacity
		end

	ET_SHARED_TOKEN_CONSTANTS
		export {NONE} all end

create

	make, make_with_capacity

feature {NONE} -- Initialization

	make
			-- Create an empty actual generic parameter list.
		do
			left_bracket := tokens.left_bracket_symbol
			right_bracket := tokens.right_bracket_symbol
			precursor
		end

	make_with_capacity (nb: INTEGER)
			-- Create an empty actual generic parameter list with capacity `nb'.
		do
			left_bracket := tokens.left_bracket_symbol
			right_bracket := tokens.right_bracket_symbol
			precursor (nb)
		end

feature -- Access

	left_bracket: ET_SYMBOL
			-- Left bracket

	right_bracket: ET_SYMBOL
			-- Right bracket

	position: ET_POSITION
			-- Position of first character of
			-- current node in source code
		do
			Result := left_bracket.position
			if Result.is_null and not is_empty then
				Result := item (1).position
			end
		end

feature -- Setting

	set_left_bracket (l: like left_bracket)
			-- Set `left_bracket' to `l'.
		require
			l_not_void: l /= Void
		do
			left_bracket := l
		ensure
			left_bracket_set: left_bracket = l
		end

	set_right_bracket (r: like right_bracket)
			-- Set `right_bracket' to `r'.
		require
			r_not_void: r /= Void
		do
			right_bracket := r
		ensure
			right_bracket_set: right_bracket = r
		end

feature -- Conversion

	resolved_syntactical_constraint (a_formals: ET_FORMAL_PARAMETER_LIST;
		a_class: ET_CLASS; a_parser: ET_EIFFEL_PARSER_SKELETON): detachable ET_ACTUAL_PARAMETER_LIST
			-- Version of current types, appearing in the constraint of one
			-- of the formal generic parameters in `a_formals' of `a_class',
			-- where class names and formal generic parameter names have been
			-- resolved (i.e. replaced by the corresponding Class_type,
			-- Tuple_type and Formal_parameter_type)
		require
			a_formals_not_void: a_formals /= Void
			a_parser_not_void: a_parser /= Void
			a_class_not_void: a_class /= Void
		do
			Result := a_parser.resolved_constraint_actual_parameter_list (Current, a_formals, a_class)
		end

feature {NONE} -- Implementation

	fixed_array: KL_SPECIAL_ROUTINES [ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM]
			-- Fixed array routines
		once
			create Result
		end

invariant

	left_bracket_not_void: left_bracket /= Void
	right_bracket_not_void: right_bracket /= Void

end
