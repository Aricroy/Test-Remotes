
-- Metadata

local mouse = libs.mouse;
local server = libs.server;
local timer = libs.timer;
--------------------------------------------------------

local tid = -1;

events.focus = function ()
	tid1 = timer.interval(function ()
		x1,y1 = mouse.position();
		server.update({id = "info", text = x1 .. " " .. y1 });
	end, 50);
end

events.blur = function ()
	timer.cancel(tid);
end

--------------------------------------------------------

actions.moveby = function ()
	x1,y1 = mouse.position();
	mouse.moveby(100,200);
	x2,y2 = mouse.position();
	assert(x2 == x1 + 100 and y2 == y1 + 200);
end

actions.moveto = function ()
	mouse.moveto(100,200);
	x,y = mouse.position();
	assert(x == 100 and y == 200);
end

--------------------------------------------------------

actions.down_left = function ()
	mouse.down("left");
end

actions.down_middle = function ()
	mouse.down("middle");
end

actions.down_right = function ()
	mouse.down("right");
end

--------------------------------------------------------

actions.up_left = function ()
	mouse.up("left");
end

actions.up_middle = function ()
	mouse.up("middle");
end

actions.up_right = function ()
	mouse.up("right");
end

--------------------------------------------------------

actions.click_left = function ()
	mouse.click("left");
end

actions.click_middle = function ()
	mouse.click("middle");
end

actions.click_center = function ()
	mouse.click("center");
end

actions.click_right = function ()
	mouse.click("right");
end

--------------------------------------------------------

actions.double_left = function ()
	mouse.double("left");
end

actions.double_middle = function ()
	mouse.double("middle");
end

actions.double_right = function ()
	mouse.double("right");
end

--------------------------------------------------------

actions.vscroll = function ()
	mouse.vscroll(10);
end

actions.hscroll = function ()
	mouse.vscroll(10);
end

--------------------------------------------------------

actions.dragbegin = function ()
	mouse.dragbegin();
end

actions.dragend = function ()
	mouse.dragend();
end
