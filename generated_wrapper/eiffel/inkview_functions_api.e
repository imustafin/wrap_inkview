note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class INKVIEW_FUNCTIONS_API


feature -- Access

	ink_view_main (h: POINTER) 
		do
			c_ink_view_main (h)
		ensure
			instance_free: class
		end

	close_app
		external
			"C inline use <inkview.h>"
		alias
			"[
				CloseApp ();
			]"
		end

	screen_width: INTEGER
		external
			"C inline use <inkview.h>"
		alias
			"[
				return ScreenWidth ();
			]"
		end

	screen_height: INTEGER
		external
			"C inline use <inkview.h>"
		alias
			"[
				return ScreenHeight ();
			]"
		end

	set_orientation (n: INTEGER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				SetOrientation ((int)$n);
			]"
		end

	get_orientation: INTEGER
		external
			"C inline use <inkview.h>"
		alias
			"[
				return GetOrientation ();
			]"
		end

	set_global_orientation (n: INTEGER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				SetGlobalOrientation ((int)$n);
			]"
		end

	get_global_orientation: INTEGER
		external
			"C inline use <inkview.h>"
		alias
			"[
				return GetGlobalOrientation ();
			]"
		end

	clear_screen
		external
			"C inline use <inkview.h>"
		alias
			"[
				ClearScreen ();
			]"
		end

	draw_line (x1: INTEGER; y1: INTEGER; x2: INTEGER; y2: INTEGER; color: INTEGER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				DrawLine ((int)$x1, (int)$y1, (int)$x2, (int)$y2, (int)$color);
			]"
		end

	draw_rect (x: INTEGER; y: INTEGER; w: INTEGER; h: INTEGER; color: INTEGER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				DrawRect ((int)$x, (int)$y, (int)$w, (int)$h, (int)$color);
			]"
		end

	fill_area (x: INTEGER; y: INTEGER; w: INTEGER; h: INTEGER; color: INTEGER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				FillArea ((int)$x, (int)$y, (int)$w, (int)$h, (int)$color);
			]"
		end

	invert_area (x: INTEGER; y: INTEGER; w: INTEGER; h: INTEGER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				InvertArea ((int)$x, (int)$y, (int)$w, (int)$h);
			]"
		end

	open_font (name: POINTER; size: INTEGER; aa: INTEGER): POINTER
		external
			"C inline use <inkview.h>"
		alias
			"[
				return OpenFont ((char const*)$name, (int)$size, (int)$aa);
			]"
		end

	close_font (f: IFONT_S_STRUCT_API) 
		do
			c_close_font (f.item)
		ensure
			instance_free: class
		end

	set_font (font: IFONT_S_STRUCT_API; color: INTEGER) 
		do
			c_set_font (font.item, color)
		ensure
			instance_free: class
		end

	draw_string (x: INTEGER; y: INTEGER; s: POINTER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				DrawString ((int)$x, (int)$y, (char const*)$s);
			]"
		end

	draw_text_rect (x: INTEGER; y: INTEGER; w: INTEGER; h: INTEGER; s: POINTER; flags: INTEGER): POINTER
		external
			"C inline use <inkview.h>"
		alias
			"[
				return DrawTextRect ((int)$x, (int)$y, (int)$w, (int)$h, (char const*)$s, (int)$flags);
			]"
		end

	full_update
		external
			"C inline use <inkview.h>"
		alias
			"[
				FullUpdate ();
			]"
		end

	soft_update
		external
			"C inline use <inkview.h>"
		alias
			"[
				SoftUpdate ();
			]"
		end

	open_menu (menu: IMENU_S_STRUCT_API; pos: INTEGER; x: INTEGER; y: INTEGER; hproc: POINTER) 
		do
			c_open_menu (menu.item, pos, x, y, hproc)
		ensure
			instance_free: class
		end

	open_menu_ex (menu: IMENUEX_S_STRUCT_API; pos: INTEGER; x: INTEGER; y: INTEGER; hproc: POINTER) 
		do
			c_open_menu_ex (menu.item, pos, x, y, hproc)
		ensure
			instance_free: class
		end

	open_context_menu (menu: ICONTEXT_MENU_S_STRUCT_API) 
		do
			c_open_context_menu (menu.item)
		ensure
			instance_free: class
		end

	create_context_menu (id: POINTER): POINTER
		external
			"C inline use <inkview.h>"
		alias
			"[
				return CreateContextMenu ((char const*)$id);
			]"
		end

	close_context_menu (menu: ICONTEXT_MENU_S_STRUCT_API) 
		do
			c_close_context_menu (menu.item)
		ensure
			instance_free: class
		end

	dialog_synchro (icon: INTEGER; title: POINTER; text: POINTER; button1: POINTER; button2: POINTER; button3: POINTER): INTEGER
		external
			"C inline use <inkview.h>"
		alias
			"[
				return DialogSynchro ((int)$icon, (char const*)$title, (char const*)$text, (char const*)$button1, (char const*)$button2, (char const*)$button3);
			]"
		end

	set_panel_type (type: INTEGER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				SetPanelType ((int)$type);
			]"
		end

	draw_panel (icon: IBITMAP_S_STRUCT_API; text: STRING_8; title: STRING_8; percent: INTEGER): INTEGER 
		local
			text_c_string: C_STRING
			title_c_string: C_STRING
		do
			create text_c_string.make (text)
			create title_c_string.make (title)
			Result := c_draw_panel (icon.item, text_c_string.item, title_c_string.item, percent)
		ensure
			instance_free: class
		end

	panel_height: INTEGER
		external
			"C inline use <inkview.h>"
		alias
			"[
				return PanelHeight ();
			]"
		end

feature -- Externals

	c_ink_view_main (h: POINTER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				InkViewMain ((iv_handler)$h);
			]"
		end

	c_close_font (f: POINTER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				CloseFont ((ifont*)$f);
			]"
		end

	c_set_font (font: POINTER; color: INTEGER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				SetFont ((ifont const*)$font, (int)$color);
			]"
		end

	c_open_menu (menu: POINTER; pos: INTEGER; x: INTEGER; y: INTEGER; hproc: POINTER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				OpenMenu ((imenu*)$menu, (int)$pos, (int)$x, (int)$y, (iv_menuhandler)$hproc);
			]"
		end

	c_open_menu_ex (menu: POINTER; pos: INTEGER; x: INTEGER; y: INTEGER; hproc: POINTER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				OpenMenuEx ((imenuex*)$menu, (int)$pos, (int)$x, (int)$y, (iv_menuhandler)$hproc);
			]"
		end

	c_open_context_menu (menu: POINTER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				OpenContextMenu ((icontext_menu const*)$menu);
			]"
		end

	c_close_context_menu (menu: POINTER)
		external
			"C inline use <inkview.h>"
		alias
			"[
				CloseContextMenu ((icontext_menu*)$menu);
			]"
		end

	c_draw_panel (icon: POINTER; text: POINTER; title: POINTER; percent: INTEGER): INTEGER
		external
			"C inline use <inkview.h>"
		alias
			"[
				return DrawPanel ((ibitmap const*)$icon, (char const*)$text, (char const*)$title, (int)$percent);
			]"
		end

feature -- Externals Address

end
