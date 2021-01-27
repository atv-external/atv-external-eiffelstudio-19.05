note
	description: "Summary description for {LIMB_DEFINITION}."
	author: ""
	date: "$Date: 2011-11-11 17:13:16 +0000 (Fri, 11 Nov 2011) $"
	revision: "$Revision: 87787 $"

deferred class
	LIMB_DEFINITION

feature

	limb_high_bit: INTEGER = 31
			-- Index of the high bit of a limb

	limb_bits: INTEGER = 32
			-- Number of bits in a limb
end
