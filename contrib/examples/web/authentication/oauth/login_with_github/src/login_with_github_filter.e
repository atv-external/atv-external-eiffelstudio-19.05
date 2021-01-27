note
	description: "Summary description for {LOGIN_WITH_GITHUB_FILTER}."
	date: "$Date: 2018-09-06 16:07:18 +0000 (Thu, 06 Sep 2018) $"
	revision: "$Revision: 102137 $"

class
	LOGIN_WITH_GITHUB_FILTER

inherit
	WSF_FILTER
	
	LOGIN_WITH_GITHUB_CONSTANTS

feature --

	execute (req: WSF_REQUEST; res: WSF_RESPONSE)
			-- <Precursor>.
		do
			if
				attached {WSF_STRING} req.cookie (oauth_session_token) as l_roc_auth_session_token and then
				attached {WSF_STRING} req.cookie (oauth_user_login) as l_user
			then
				req.set_execution_variable ("user", l_user.value)
			else
				-- Set error.
			end
			execute_next (req, res)
		end

end
