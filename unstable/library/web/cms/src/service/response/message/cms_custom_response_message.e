note
	description: "Custom cms response message."
	date: "$Date: 2015-05-22 20:38:11 +0000 (Fri, 22 May 2015) $"
	revision: "$Revision: 97348 $"

class
	CMS_CUSTOM_RESPONSE_MESSAGE

inherit
	CMS_RESPONSE_MESSAGE
		redefine
			send_payload_to
		end

create
	make

feature {NONE} -- Initialization

	make (a_code: INTEGER)
			-- Set `status_code' to `a_code'.
		require
			a_code_valid: a_code > 0
		do
			initialize
			status_code := a_code
		end

feature -- Access

	payload: detachable READABLE_STRING_8
			-- Optional payload.

feature -- Element change

	set_status_code (a_code: INTEGER)
			-- Set `status_code' to `a_code'.
		require
			a_code_valid: a_code > 0
		do
			status_code := a_code
		end

	set_payload (s: detachable READABLE_STRING_8)
			-- Set `payload' to `s'.
		do
			if s /= Void then
				payload := s
				header.put_content_length (s.count)
			else
			end
		end

feature {WSF_RESPONSE} -- Output

	send_payload_to (res: WSF_RESPONSE)
			-- Send payload data to response `res'.
		do
			if attached payload as s then
				res.put_string (s)
			end
		end

end
