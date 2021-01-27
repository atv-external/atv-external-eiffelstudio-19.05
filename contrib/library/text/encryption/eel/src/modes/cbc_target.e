note
	description: "A block cipher that can be the target of CBC mode"
	author: "Colin LeMahieu"
	date: "$Date: 2011-11-11 17:13:16 +0000 (Fri, 11 Nov 2011) $"
	revision: "$Revision: 87787 $"
	quote: "I don't make jokes. I just watch the government and report the facts. - Will Rogers"

deferred class
	CBC_TARGET

feature
	block_size: INTEGER_32
		deferred
		ensure
			Result > 0
		end

	cbc_ready: BOOLEAN
		deferred
		end

	decrypt_block (in: SPECIAL [NATURAL_8] in_offset: INTEGER_32 out_array: SPECIAL [NATURAL_8] out_offset: INTEGER_32)
		require
			cbc_ready
			in.valid_index (in_offset)
			in.valid_index (in_offset + block_size - 1)
			out_array.valid_index (out_offset)
			out_array.valid_index (out_offset + block_size - 1)
		deferred
		end

	encrypt_block (in: SPECIAL [NATURAL_8] in_offset: INTEGER_32 out_array: SPECIAL [NATURAL_8] out_offset: INTEGER_32)
		require
			cbc_ready
			in.valid_index (in_offset)
			in.valid_index (in_offset + block_size - 1)
			out_array.valid_index (out_offset)
			out_array.valid_index (out_offset + block_size - 1)
		deferred
		end
end
