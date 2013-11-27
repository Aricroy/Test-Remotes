
-- Metadata

local keyboard = libs.keyboard;
local server = libs.server;
--------------------------------------------------------

actions.down = function ()
	keyboard.down("a");
end

actions.up = function ()
	keyboard.up("a");
end

actions.press = function ()
	keyboard.press("capslock");
end

stroke = function (...)
	keyboard.stroke(unpack({...}));
end

actions.stroke1 = function ()
	stroke("a");
end

actions.stroke3 = function ()
	stroke("shift", "alt", "8");
end

actions.char = function ()
	keyboard.char(65);
end

actions.text = function ()
	keyboard.text("åäö Hello World!");
end

actions.modifier = function ()
	local r = keyboard.modifier("a");
	server.update({ id = "info", text = r });
end
