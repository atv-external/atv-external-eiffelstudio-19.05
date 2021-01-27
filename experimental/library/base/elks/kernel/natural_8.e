note
	description: "Integer values coded on 8 bits"
	external_name: "System.Byte"
	assembly: "mscorlib"
	library: "Free implementation of ELKS library"
	status: "See notice at end of class."
	legal: "See notice at end of class."
	date: "$Date: 2012-10-30 15:32:46 +0000 (Tue, 30 Oct 2012) $"
	revision: "$Revision: 92022 $"

frozen expanded class NATURAL_8 inherit

	NATURAL_8_REF
		redefine
			is_less,
			plus,
			minus,
			product,
			quotient,
			power,
			integer_quotient,
			integer_remainder,
			identity,
			as_natural_8,
			as_natural_16,
			as_natural_32,
			as_natural_64,
			as_integer_8,
			as_integer_16,
			as_integer_32,
			as_integer_64,
			to_real_32,
			to_real_64,
			to_character_8,
			to_character_32,
			bit_and,
			bit_or,
			bit_xor,
			bit_not,
			bit_shift_left,
			bit_shift_right
		end

create
	default_create,
	make_from_reference

convert
	make_from_reference ({NATURAL_8_REF}),
	to_real_32: {REAL_32},
	to_real_64: {REAL_64},
	to_integer_16: {INTEGER_16},
	to_integer_32: {INTEGER_32},
	to_integer_64: {INTEGER_64},
	to_natural_16: {NATURAL_16},
	to_natural_32: {NATURAL_32},
	to_natural_64: {NATURAL_64}

feature -- Comparison

	is_less alias "<" (other: NATURAL_8): BOOLEAN
			-- Is current integer less than `other'?
		external
			"built_in"
		end

feature -- Basic operations

	plus alias "+" (other: NATURAL_8): NATURAL_8
			-- Sum with `other'
		external
			"built_in"
		end

	minus alias "-" (other: NATURAL_8): NATURAL_8
			-- Result of subtracting `other'
		external
			"built_in"
		end

	product alias "*" (other: NATURAL_8): NATURAL_8
			-- Product by `other'
		external
			"built_in"
		end

	quotient alias "/" (other: NATURAL_8): REAL_64
			-- Division by `other'
		external
			"built_in"
		end

	identity alias "+": NATURAL_8
			-- Unary plus
		external
			"built_in"
		end

	integer_quotient alias "//" (other: NATURAL_8): NATURAL_8
			-- Integer division of Current by `other'
		external
			"built_in"
		end

	integer_remainder alias "\\" (other: NATURAL_8): NATURAL_8
			-- Remainder of the integer division of Current by `other'
		external
			"built_in"
		end

	power alias "^" (other: REAL_64): REAL_64
			-- Integer power of Current by `other'
		external
			"built_in"
		end

feature -- Conversion

	as_natural_8: NATURAL_8
			-- Convert `item' into an NATURAL_8 value.
		external
			"built_in"
		end

	as_natural_16: NATURAL_16
			-- Convert `item' into an NATURAL_16 value.
		external
			"built_in"
		end

	as_natural_32: NATURAL_32
			-- Convert `item' into an NATURAL_32 value.
		external
			"built_in"
		end

	as_natural_64: NATURAL_64
			-- Convert `item' into an NATURAL_64 value.
		external
			"built_in"
		end

	as_integer_8: INTEGER_8
			-- Convert `item' into an INTEGER_8 value.
		external
			"built_in"
		end

	as_integer_16: INTEGER_16
			-- Convert `item' into an INTEGER_16 value.
		external
			"built_in"
		end

	as_integer_32: INTEGER_32
			-- Convert `item' into an INTEGER_32 value.
		external
			"built_in"
		end

	as_integer_64: INTEGER_64
			-- Convert `item' into an INTEGER_64 value.
		external
			"built_in"
		end

	to_real_32: REAL_32
			-- Convert `item' into a REAL_32
		external
			"built_in"
		end

	to_real_64: REAL_64
			-- Convert `item' into a REAL_64
		external
			"built_in"
		end

	to_character_8: CHARACTER_8
			-- Associated character in 8 bit version.
		external
			"built_in"
		end

	to_character_32: CHARACTER_32
			-- Associated character in 32 bit version.
		external
			"built_in"
		end

feature -- Bit operations

	bit_and alias "&" (i: NATURAL_8): NATURAL_8
			-- Bitwise and between Current' and `i'.
		external
			"built_in"
		end

	bit_or alias "|" (i: NATURAL_8): NATURAL_8
			-- Bitwise or between Current' and `i'.
		external
			"built_in"
		end

	bit_xor (i: NATURAL_8): NATURAL_8
			-- Bitwise xor between Current' and `i'.
		external
			"built_in"
		end

	bit_not: NATURAL_8
			-- One's complement of Current.
		external
			"built_in"
		end

	bit_shift_left alias "|<<" (n: INTEGER): NATURAL_8
			-- Shift Current from `n' position to left.
		external
			"built_in"
		end

	bit_shift_right alias "|>>" (n: INTEGER): NATURAL_8
			-- Shift Current from `n' position to right.
		external
			"built_in"
		end

note
	copyright: "Copyright (c) 1984-2012, Eiffel Software and others"
	license:   "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end
