note
	description: "Object representing a Post"
	date: "$Date: 2018-09-06 16:07:18 +0000 (Thu, 06 Sep 2018) $"
	revision: "$Revision: 102137 $"
	EIS: "name= Posts", "src=https://developers.facebook.com/docs/graph-api/reference/v2.9/post", "protocol=uri"
class
	FB_POST

feature -- Access

	id: detachable STRING
		-- The post ID

	caption: detachable STRING
		-- Link caption in post that appears below name.
		-- The caption must be an actual URLs and should accurately reflect the URL and associated advertiser or business someone visits when they click on it.

	created_time: detachable STRING
		-- The time the post was initially published. For a post about a life event, this will be the date and time of the life event.

	message: detachable STRING
		-- The status message in the post.

	story: detachable STRING
		-- Text from stories not intentionally generated by users, such as those generated when two people become friends, or when someone else posts on the person's wall.

feature -- Change Element

	set_id (a_id: like id)
			-- Set `id' with `a_id'.
		do
			id := a_id
		ensure
			id_set: id = a_id
		end

	set_caption (a_caption: like caption)
			-- Set `caption' with a `a_caption'.
		do
			caption := a_caption
		ensure
			caption_set: caption = a_caption
		end

	set_created_time (a_time: like created_time)
			-- Set `created_time' with a_time.
		do
			created_time := a_time
		ensure
			created_time_set: created_time  = a_time
		end

	set_message (a_message: like message)
			-- Set `message' with `a_message'.
		do
			message := a_message
		ensure
			message_set: message = a_message
		end

	set_story (a_story: like story)
			-- Set `story' with `a_story'.
		do
			story := a_story
		ensure
			story_set: story = a_story
		end

feature -- Status Report

	basic_out: STRING
		do
			create Result.make_from_string ("%NPOST:")

			if attached id as l_id then
				Result.append (" id:")
				Result.append (l_id)
				Result.append ("%N")
			end
			if attached caption as l_caption then
				Result.append (" caption:")
				Result.append (l_caption)
				Result.append ("%N")
			end
			if attached created_time as l_ct then
				Result.append (" created_time:")
				Result.append (l_ct)
				Result.append ("%N")
			end
			if attached message as l_message then
				Result.append (" message:")
				Result.append (l_message)
				Result.append ("%N")
			end
			if attached story as l_story then
				Result.append (" stoty:")
				Result.append (l_story)
				Result.append ("%N")
			end

		end

end