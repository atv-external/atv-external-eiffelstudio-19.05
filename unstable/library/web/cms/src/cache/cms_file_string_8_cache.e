note
	description: "Cache system for STRING_8 value."
	date: "$Date: 2015-10-09 17:56:51 +0000 (Fri, 09 Oct 2015) $"
	revision: "$Revision: 97975 $"

class
	CMS_FILE_STRING_8_CACHE

inherit
	CMS_FILE_CACHE [STRING]

create
	make

feature -- Access

	append_to (a_output: STRING)
			-- Append `item' to `a_output'.
		local
			f: RAW_FILE
			retried: BOOLEAN
		do
			if not retried then
				create f.make_with_path (path)
				if f.exists and then f.is_access_readable then
					f.open_read
					if attached file_to_item (f) as s then
						a_output.append (s)
					end
					f.close
				end
			end
		rescue
			retried := True
			retry
		end

feature {NONE} -- Implementation

	file_to_item (f: FILE): detachable STRING
		local
			retried: BOOLEAN
		do
			if retried then
				Result := Void
			else
				from
					create Result.make_empty
				until
					f.exhausted or f.end_of_file
				loop
					f.read_stream_thread_aware (1_024)
					Result.append (f.last_string)
				end
			end
		rescue
			retried := True
			retry
		end

	item_to_file (a_data: STRING; f: FILE)
		do
			f.put_string (a_data)
		end

note
	copyright: "2011-2015, Jocelyn Fiat, Javier Velilla, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
end
