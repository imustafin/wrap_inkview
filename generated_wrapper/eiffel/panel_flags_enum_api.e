-- enum wrapper
class PANEL_FLAGS_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = panel_disabled or a_value = panel_enabled or a_value = panel_event_no_handling or a_value = panel_no_fb_offset
		end

	panel_disabled: INTEGER 
		external
			"C inline use <inkview.h>"
		alias
			"PANEL_DISABLED"
		end

	panel_enabled: INTEGER 
		external
			"C inline use <inkview.h>"
		alias
			"PANEL_ENABLED"
		end

	panel_event_no_handling: INTEGER 
		external
			"C inline use <inkview.h>"
		alias
			"PANEL_EVENT_NO_HANDLING"
		end

	panel_no_fb_offset: INTEGER 
		external
			"C inline use <inkview.h>"
		alias
			"PANEL_NO_FB_OFFSET"
		end

end
