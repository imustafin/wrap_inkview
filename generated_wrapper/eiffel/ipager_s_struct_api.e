note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class IPAGER_S_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	page_font: detachable IFONT_S_STRUCT_API 
			-- Access member `page_font`
		require
			exists: exists
		do
			if attached c_page_font (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_page_font (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_page_font (item) 
		end

	set_page_font (a_value: IFONT_S_STRUCT_API) 
			-- Set member `page_font`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_page_font (item, a_value.item)
		ensure
			page_font_set: attached page_font as l_value implies l_value.item = a_value.item
		end

	height: INTEGER
			-- Access member `height`
		require
			exists: exists
		do
			Result := c_height (item)
		ensure
			result_correct: Result = c_height (item)
		end

	set_height (a_value: INTEGER) 
			-- Change the value of member `height` to `a_value`.
		require
			exists: exists
		do
			set_c_height (item, a_value)
		ensure
			height_set: a_value = height
		end

	indent_horizontal: INTEGER
			-- Access member `indent_horizontal`
		require
			exists: exists
		do
			Result := c_indent_horizontal (item)
		ensure
			result_correct: Result = c_indent_horizontal (item)
		end

	set_indent_horizontal (a_value: INTEGER) 
			-- Change the value of member `indent_horizontal` to `a_value`.
		require
			exists: exists
		do
			set_c_indent_horizontal (item, a_value)
		ensure
			indent_horizontal_set: a_value = indent_horizontal
		end

	left_width: INTEGER
			-- Access member `left_width`
		require
			exists: exists
		do
			Result := c_left_width (item)
		ensure
			result_correct: Result = c_left_width (item)
		end

	set_left_width (a_value: INTEGER) 
			-- Change the value of member `left_width` to `a_value`.
		require
			exists: exists
		do
			set_c_left_width (item, a_value)
		ensure
			left_width_set: a_value = left_width
		end

	page_width: INTEGER
			-- Access member `page_width`
		require
			exists: exists
		do
			Result := c_page_width (item)
		ensure
			result_correct: Result = c_page_width (item)
		end

	set_page_width (a_value: INTEGER) 
			-- Change the value of member `page_width` to `a_value`.
		require
			exists: exists
		do
			set_c_page_width (item, a_value)
		ensure
			page_width_set: a_value = page_width
		end

	rigth_width: INTEGER
			-- Access member `rigth_width`
		require
			exists: exists
		do
			Result := c_rigth_width (item)
		ensure
			result_correct: Result = c_rigth_width (item)
		end

	set_rigth_width (a_value: INTEGER) 
			-- Change the value of member `rigth_width` to `a_value`.
		require
			exists: exists
		do
			set_c_rigth_width (item, a_value)
		ensure
			rigth_width_set: a_value = rigth_width
		end

	separator_size: INTEGER
			-- Access member `separator_size`
		require
			exists: exists
		do
			Result := c_separator_size (item)
		ensure
			result_correct: Result = c_separator_size (item)
		end

	set_separator_size (a_value: INTEGER) 
			-- Change the value of member `separator_size` to `a_value`.
		require
			exists: exists
		do
			set_c_separator_size (item, a_value)
		ensure
			separator_size_set: a_value = separator_size
		end

	icon_left: detachable IBITMAP_S_STRUCT_API 
			-- Access member `icon_left`
		require
			exists: exists
		do
			if attached c_icon_left (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_icon_left (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_icon_left (item) 
		end

	set_icon_left (a_value: IBITMAP_S_STRUCT_API) 
			-- Set member `icon_left`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_icon_left (item, a_value.item)
		ensure
			icon_left_set: attached icon_left as l_value implies l_value.item = a_value.item
		end

	icon_right: detachable IBITMAP_S_STRUCT_API 
			-- Access member `icon_right`
		require
			exists: exists
		do
			if attached c_icon_right (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_icon_right (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_icon_right (item) 
		end

	set_icon_right (a_value: IBITMAP_S_STRUCT_API) 
			-- Set member `icon_right`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_icon_right (item, a_value.item)
		ensure
			icon_right_set: attached icon_right as l_value implies l_value.item = a_value.item
		end

	current_page: INTEGER
			-- Access member `current_page`
		require
			exists: exists
		do
			Result := c_current_page (item)
		ensure
			result_correct: Result = c_current_page (item)
		end

	set_current_page (a_value: INTEGER) 
			-- Change the value of member `current_page` to `a_value`.
		require
			exists: exists
		do
			set_c_current_page (item, a_value)
		ensure
			current_page_set: a_value = current_page
		end

	total_pages: INTEGER
			-- Access member `total_pages`
		require
			exists: exists
		do
			Result := c_total_pages (item)
		ensure
			result_correct: Result = c_total_pages (item)
		end

	set_total_pages (a_value: INTEGER) 
			-- Change the value of member `total_pages` to `a_value`.
		require
			exists: exists
		do
			set_c_total_pages (item, a_value)
		ensure
			total_pages_set: a_value = total_pages
		end

	position: POINTER
			-- Access member `position`
		require
			exists: exists
		do
			Result := c_position (item) 
		ensure
		end

	set_position (a_value: POINTER )
			-- Set member `position`
		require
			a_value_not_void: a_value /= default_pointer
			exists: exists
		do
			set_c_position (item, a_value)
		ensure
			position_set: position = a_value 		end

	orientation: INTEGER
			-- Access member `orientation`
		require
			exists: exists
		do
			Result := c_orientation (item)
		ensure
			result_correct: Result = c_orientation (item)
		end

	set_orientation (a_value: INTEGER) 
			-- Change the value of member `orientation` to `a_value`.
		require
			exists: exists
		do
			set_c_orientation (item, a_value)
		ensure
			orientation_set: a_value = orientation
		end

feature {NONE} -- Implementation wrapper for struct struct ipager_s

	sizeof_external: INTEGER 
		external
			"C inline use <inkview.h>"
		alias
			"sizeof(struct ipager_s)"
		end

	c_page_font (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->page_font
			]"
		end

	set_c_page_font (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->page_font =  (ifont*)$a_value
			]"
		ensure
			page_font_set: a_value = c_page_font (an_item)
		end

	c_height (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->height
			]"
		end

	set_c_height (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->height =  (int)$a_value
			]"
		ensure
			height_set: a_value = c_height (an_item)
		end

	c_indent_horizontal (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->indent_horizontal
			]"
		end

	set_c_indent_horizontal (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->indent_horizontal =  (int)$a_value
			]"
		ensure
			indent_horizontal_set: a_value = c_indent_horizontal (an_item)
		end

	c_left_width (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->left_width
			]"
		end

	set_c_left_width (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->left_width =  (int)$a_value
			]"
		ensure
			left_width_set: a_value = c_left_width (an_item)
		end

	c_page_width (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->page_width
			]"
		end

	set_c_page_width (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->page_width =  (int)$a_value
			]"
		ensure
			page_width_set: a_value = c_page_width (an_item)
		end

	c_rigth_width (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->rigth_width
			]"
		end

	set_c_rigth_width (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->rigth_width =  (int)$a_value
			]"
		ensure
			rigth_width_set: a_value = c_rigth_width (an_item)
		end

	c_separator_size (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->separator_size
			]"
		end

	set_c_separator_size (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->separator_size =  (int)$a_value
			]"
		ensure
			separator_size_set: a_value = c_separator_size (an_item)
		end

	c_icon_left (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->icon_left
			]"
		end

	set_c_icon_left (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->icon_left =  (ibitmap const*)$a_value
			]"
		ensure
			icon_left_set: a_value = c_icon_left (an_item)
		end

	c_icon_right (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->icon_right
			]"
		end

	set_c_icon_right (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->icon_right =  (ibitmap const*)$a_value
			]"
		ensure
			icon_right_set: a_value = c_icon_right (an_item)
		end

	c_current_page (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->current_page
			]"
		end

	set_c_current_page (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->current_page =  (int)$a_value
			]"
		ensure
			current_page_set: a_value = c_current_page (an_item)
		end

	c_total_pages (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->total_pages
			]"
		end

	set_c_total_pages (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->total_pages =  (int)$a_value
			]"
		ensure
			total_pages_set: a_value = c_total_pages (an_item)
		end

	c_position (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				&((struct ipager_s*)$an_item)->position
			]"
		end

	set_c_position (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->position =  *(irect*)$a_value
			]"
		end

	c_orientation (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->orientation
			]"
		end

	set_c_orientation (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <inkview.h>"
		alias
			"[
				((struct ipager_s*)$an_item)->orientation =  (int)$a_value
			]"
		ensure
			orientation_set: a_value = c_orientation (an_item)
		end

end