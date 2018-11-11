local text_original = LocalizationManager.text
local testAllStrings = false

function LocalizationManager:text(string_id, ...)
return string_id == "menu_difficulty_normal" and "Легко"
    or string_id == "menu_difficulty_hard" and "Легко+"
    or string_id == "menu_difficulty_very_hard" and "Легко++"
    or string_id == "menu_difficulty_overkill" and "Средне"
    or string_id == "menu_difficulty_easy_wish" and "Средне+"
    or string_id == "menu_difficulty_apocalypse" and "Суицид"
    or string_id == "menu_difficulty_sm_wish" and "Ад на Земле"
    or testAllStrings == true and string_id
    or text_original(self, string_id, ...)
end