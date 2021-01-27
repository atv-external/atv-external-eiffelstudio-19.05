note
	description: "[
		API to perform actions like opening and closing the connection, sending and receiving messages, and listening
		for events triggered by the server
	]"
	date: "$Date: 2016-10-18 12:02:52 +0000 (Tue, 18 Oct 2016) $"
	revision: "$Revision: 99306 $"

deferred class
	WEB_SOCKET_CLIENT

inherit
	WEB_SOCKET_CLIENT_I

feature -- Status report

	is_secure_connection_supported: BOOLEAN = False

feature -- Factory

	new_socket (a_port: INTEGER; a_host: STRING): HTTP_STREAM_SOCKET
		do
			if is_secure then
				check is_secure_connection_supported: False end
			end
			create {HTTP_STREAM_SOCKET} Result.make_client_by_port (a_port, a_host)
		end

end
