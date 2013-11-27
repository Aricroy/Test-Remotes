
-- Metadata

local timer = libs.timer;
local server = libs.server;
local task = libs.task;
local utf8 = libs.utf8;
local l = libs.log;
local tid = -1;

events.create = function ()
	l.trace("create");
end

events.focus = function ()
	l.trace("focus");
	actions.start();
end

events.blur = function ()
	l.trace("blur");
	timer.cancel(tid);
end

events.destroy = function ()
	l.trace("destroy");
end

actions.start = function ()
	l.trace("start");
	tid = timer.interval(function ()
		server.update("info", "text", nil);
	end, 1000);
end



actions.stop = function ()
	l.trace("stop");
	timer.cancel(tid);
end

actions.run = function ()
	l.trace("run");
	libs.timer.timeout(function ()
		l.trace("timeout");
		libs.server.run("", "test");
	end, 100);
	l.trace("sleep begin")
	libs.task.sleep(3000);
	l.trace("sleep end")
end

actions.test = function ()
	l.trace("test!");
end
