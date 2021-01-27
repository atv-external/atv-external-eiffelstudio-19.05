note
	description: "Interface for accessing comments from database."
	date: "$Date: 2017-01-27 18:00:20 +0000 (Fri, 27 Jan 2017) $"
	revision: "$Revision: 99767 $"

deferred class
	CMS_COMMENTS_STORAGE_I

feature -- Error Handling

	error_handler: ERROR_HANDLER
			-- Error handler.
		deferred
		end

feature -- Access

	comment (a_cid: INTEGER_64): detachable CMS_COMMENT
		require
			a_cid > 0
		deferred
		end

	comments_for (a_content: CMS_CONTENT): detachable LIST [CMS_COMMENT]
			-- Comments for `a_content`.
		require
			has_id: a_content.has_identifier
		deferred
		end

feature -- Change

	save_comment (a_comment: CMS_COMMENT)
			-- Save `a_comment`.
		deferred
		end

end
