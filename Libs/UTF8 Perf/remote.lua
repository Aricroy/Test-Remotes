
-- Metadata

local utf8 = libs.utf8;
local oldutf8 = libs.oldutf8;
local fs = libs.fs;

local tstart;
local tmsg;

function start(msg)
	tmsg = msg;
	tstart = libs.timer.time();
end

function stop()
	local tend = libs.timer.time();
	print(tmsg .. " took " .. (tend - tstart) .. " ms");
end

actions.many = function ()
	start("read file");
	local str = fs.read("TestUTF8Perf.txt");
	stop();
	
	start("create u8");
	local u8 = utf8.new(str);
	stop();
	
	start("length");
	u8:len();
	stop();
	
	local s = 0;

	start("indexof");
	s = 0;
	s = u8:indexof(" ", s);
	local idx = {};
	while s > -1 do
		s = u8:indexof(" ", s);
		table.insert(idx, s);
		if (s > -1) then s = s + 1 end
	end
	stop();
	
	start("split");
	u8:split(" ");
	stop();
end

actions.new = function ()
	local str = utf8.new("hello world åäö");
	str:test();
end
