
-- Metadata

local device = libs.device;

actions.wol = function ()
	device.wol();
end

actions.keyboard = function ()
	device.keyboard();
end

actions.mouse = function ()
	device.mouse();
end

actions.switch = function ()
	device.switch("Test.Task");
end

actions.vibrate = function ()
	device.vibrate();
end

actions.listen = function ()
	device.listen();
end

actions.toast = function ()
	device.toast("abc");
end
