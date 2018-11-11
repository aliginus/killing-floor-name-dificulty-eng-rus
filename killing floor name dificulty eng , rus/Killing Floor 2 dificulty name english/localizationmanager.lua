local text_original = LocalizationManager.text
local testAllStrings = false

function LocalizationManager:text(string_id, ...)
return string_id == "menu_difficulty_normal" and "Light"
    or string_id == "menu_difficulty_hard" and "Light+"
    or string_id == "menu_difficulty_very_hard" and "Light++"
    or string_id == "menu_difficulty_overkill" and "Average"
    or string_id == "menu_difficulty_easy_wish" and "Average+"
    or string_id == "menu_difficulty_apocalypse" and "Suicide"
    or string_id == "menu_difficulty_sm_wish" and "Hell on earth"
    or testAllStrings == true and string_id
    or text_original(self, string_id, ...)
end