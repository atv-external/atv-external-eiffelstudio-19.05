note
	description: "Summary description for {TEMPLATE_PAGE}."
	author: ""
	date: "$Date: 2018-09-06 16:07:18 +0000 (Thu, 06 Sep 2018) $"
	revision: "$Revision: 102137 $"

deferred class
	TEMPLATE_PAGE

inherit

	SHARED_TEMPLATE_CONTEXT


feature -- Status

	representation: detachable STRING

	set_template_folder (v: PATH)
		do
			template_context.set_template_folder (v)
		end

	set_template_file_name (v: STRING)
		do
			create template.make_from_file (v)
		end

	set_template (v: like template)
		do
			template := v
		end

	template: TEMPLATE_FILE
end


