note
	description: "[
			Hook providing a way to alter a menu
		]"
	date: "$Date: 2014-11-13 15:23:47 +0000 (Thu, 13 Nov 2014) $"

deferred class
	CMS_HOOK_MENU_ALTER

inherit
	CMS_HOOK

feature -- Hook

	menu_alter (a_menu: CMS_MENU; a_response: CMS_RESPONSE)
			-- Hook execution on menu `a_menu'
			-- for related response `a_response'.
		deferred
		end

end
