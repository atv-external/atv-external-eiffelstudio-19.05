note
	description: "[
				{HTTP_ACCEPT_ENCODING_VARIANTS}
				Represent the encoding results between client preferences and encoding variants supported by the server.
				If the server is unable to supports the requested Accept-Encoding values, the server can build
				a response with the list of supported encodings
			]"
	date: "$Date: 2013-10-24 16:06:12 +0000 (Thu, 24 Oct 2013) $"
	revision: "$Revision: 93167 $"
	EIS: "name= Compression", "src=http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.3", "protocol=uri"

class
	HTTP_ACCEPT_ENCODING_VARIANTS

inherit
	HTTP_ACCEPT_VARIANTS
		rename
			variant_value as encoding
		end

create
	make

feature -- Change

	set_vary_header_value
			-- <Precursor>
		do
			vary_header_value := {HTTP_HEADER_NAMES}.header_accept_encoding -- "Accept-Encoding"
		end

note
	copyright: "2011-2013, Javier Velilla, Jocelyn Fiat, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"

end