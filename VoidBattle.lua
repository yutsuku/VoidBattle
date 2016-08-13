local VoidBattle = {};
local strfind = strfind;

VoidBattle.hook = ChatFrame_OnEvent;

VoidBattle.ChatFrame_OnEvent = function(event)
	if (event == "CHAT_MSG_SYSTEM") then
		if (strfind(arg1, "The battle for.*")) then
			-- DEFAULT_CHAT_FRAME:AddMessage("Debug: " .. gsub(arg1,"\124","\124\124"), 0.7, 0.7, 1.0);
			return false
		end
	end
	return true
end

ChatFrame_OnEvent = function(event)
	if (VoidBattle.ChatFrame_OnEvent(event)) then
		VoidBattle.hook(event);
	end
end
