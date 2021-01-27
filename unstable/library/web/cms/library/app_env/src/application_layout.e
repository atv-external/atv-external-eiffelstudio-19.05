note
	description: "See {APPLICATION_ENVIRONMENT}."
	date: "$Date: 2015-04-30 08:41:13 +0000 (Thu, 30 Apr 2015) $"
	revision: "$Revision: 97217 $"

class
	APPLICATION_LAYOUT

obsolete
	"Use APPLICATION_ENVIRONMENT [April/2015]"

inherit
	APPLICATION_ENVIRONMENT

create
	make_default,
	make_with_path,
	make_with_directory_name

note
	copyright: "2011-2015, Javier Velilla, Jocelyn Fiat, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
end
