note
	description:	"[
						Example application that illustrates how one can use multiple classes to
						write to the same log writers at the same time
					]"
	legal:			"See note at the end of this class"
	status:			"See notice at the end of this class"
	date:			"$Date: 2014-05-17 19:48:21 +0000 (Sat, 17 May 2014) $"
	revision:		"$Revision: 95095 $"

class
	APPLICATION

inherit
	GLOBAL

create
	make

feature {NONE} -- Initialization

	make
			-- Make an instance of APPLICATION, and run the application
		local
			something: SOME_CLASS
		do
				--| Enable stderr log output
			log.enable_default_stderr_log
			log.default_log_writer_stderr.enable_debug_log_level

				--| Write an informational message
			log.write_information ("The application is starting up...")

				--| Do something sensible (from an application perspective, that is)
			create something
			something.do_something

				--| Wait here, so the user can see the generated output
			io.readline
		end

note
	copyright:	"Copyright (C) 2010 by ITPassion Ltd, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (See http://www.eiffel.com/licensing/forum.txt)"
	source:		"[
					ITPassion Ltd.
					5 Anstice Close, Chiswick, Middlesex, W4 2RJ, United Kingdom
					Telephone 0044-208-742-3422 Fax 0044-208-742-3468
					Website http://www.itpassion.com
					Customer Support http://powerdesk.itpassion.com
				]"

end
