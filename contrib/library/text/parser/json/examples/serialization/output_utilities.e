note
	description: "Summary description for {OUTPUT_UTILITIES}."
	date: "$Date: 2018-11-14 11:33:00 +0000 (Wed, 14 Nov 2018) $"
	revision: "$Revision: 102453 $"

class
	OUTPUT_UTILITIES

feature -- Output

	output_object (obj: detachable ANY; a_offset: STRING)
		local
			l_offset: STRING
		do
				-- Warning: it should use the localication printer due to potential unicode value...
			if obj = Void then
				print ("Void")
				print ("%N")
			elseif attached {READABLE_STRING_GENERAL} obj as str then
				print ("%"")
				print (str)
				print ("%"%N")
			elseif attached {TABLE_ITERABLE [detachable ANY, READABLE_STRING_GENERAL]} obj as tb then
				print (tb.generator + " {%N")
				l_offset := a_offset + "  "
				across
					tb as ic
				loop
					print (l_offset)
					print (ic.key)
					print (" => ")
					output_object (ic.item, l_offset + "  ")
				end
				print (a_offset)
				print ("}%N")
			elseif attached {ITERABLE [detachable ANY]} obj as lst then
				print (lst.generator + " [%N")
				l_offset := a_offset + "  "
				across
					lst as ic
				loop
					print (l_offset)
					output_object (ic.item, l_offset + "  ")
				end
				print (a_offset)
				print ("]%N")
			else
				print (obj)
				print ("%N")
			end
		end

end
