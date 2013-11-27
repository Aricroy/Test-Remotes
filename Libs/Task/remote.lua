
-- Metadata

local server = libs.server;
local task = libs.task;
local process = "uTorrent.exe";

actions.start_app_without_exe = function ()
	task.start("chrome");
end

actions.start_app_with_exe = function ()
	task.start("chrome.exe");
end

actions.start_without_exe = function ()
	task.start("calc");
end

actions.start_with_exe = function ()
	task.start("calc.exe");
end

actions.start_relative = function ()
	task.start("");
end

actions.start_absolute = function ()
	task.start("C:/Windows/notepad.exe");
end

actions.start_vars = function ()
	task.start("%windir%/notepad.exe");
end

actions.start_bad = function ()
	task.start("laskjdlaksjdflkasjf");
end

actions.start_args = function ()
	task.start("cmd", "/k", "ipconfig");
end

actions.start_args_table = function ()
	task.start("cmd", { "/k", "ipconfig" });
end

actions.open_http = function ()
	task.open("http://www.google.com");
end

actions.open_www = function ()
	task.open("www.youtube.com");
end

actions.open_file = function ()
	task.open("C:/Test.txt");
end

actions.open_dir = function ()
	task.open("C:/Windows");
end

actions.open_cp = function ()
	task.open("control mouse");
end

-------------------------------------------------------------------------------------
-- Windows
-------------------------------------------------------------------------------------

actions.desktop = function ()
	server.update({ id = "info", text = task.desktop() });
end

actions.desktop_title = function ()
	server.update({ id = "info", text = task.title(task.desktop()) });
end

actions.active = function ()
	server.update({ id = "info", text = task.active() });
end

actions.find_class = function ()
	server.update({ id = "info", text = task.find("Chrome_WidgetWin_1", nil) });
end

actions.find_title = function ()
	server.update({ id = "info", text = task.find(nil, "Calculator") });
end

actions.find_both = function ()
	server.update({ id = "info", text = task.find("CalcFrame", "Calculator") });
end

actions.find_none = function ()
	server.update({ id = "info", text = task.find(nil, nil) });
end

actions.post = function ()
	server.update({ id = "info", text = task.post(task.window("spotify.exe"), 0x0319, 0, 917504) });
end

actions.post_bad = function ()
	server.update({ id = "info", text = task.post(0, 0, 0, 0) });
end

actions.send = function ()
	server.update({ id = "info", text = task.send(task.window("spotify.exe"), 0x0319, 0, 917504) });
end

actions.send_bad = function ()
	server.update({ id = "info", text = task.send(0, 0, 0, 0) });
end

-------------------------------------------------------------------------------------
-- Misc
-------------------------------------------------------------------------------------

actions.active = function ()
	server.update({ id = "info", text = task.active() });
end

actions.active_title = function ()
	server.update({ id = "info", text = task.title(task.active()) });
end

actions.active_title = function ()
	server.update({ id = "info", text = task.title(task.active()) });
end

actions.process = function ()
	server.update({ id = "info", text = task.process(process) });
end

actions.process_bad = function ()
	server.update({ id = "info", text = task.process("asdf") });
end

actions.window = function ()
	server.update({ id = "info", text = task.window(process) });
end

actions.window_bad = function ()
	server.update({ id = "info", text = task.window("asdf") });
end

actions.title = function ()
	server.update({ id = "info", text = task.title(process) });
end

actions.title_bad = function ()
	server.update({ id = "info", text = task.title("asdf") });
end

actions.switchto = function ()
	server.update({ id = "info", text = task.switchto(process) });
end

actions.switchto_bad = function ()
	server.update({ id = "info", text = task.switchto("asdf") });
end

actions.switchtowait = function ()
	server.update({ id = "info", text = task.switchtowait(process) });
end

actions.switchtowait_bad = function ()
	server.update({ id = "info", text = task.switchtowait("asdf") });
end

actions.switchtowait3sec = function ()
	local text = task.switchtowait(process, 3000);
	print("done!");
	server.update({ id = "info", text = text });
end

actions.switchtowait3sec_bad = function ()
	local text = task.switchtowait("asdf", 3000);
	print("done!");
	server.update({ id = "info", text = text });
end

actions.kill = function ()
	task.kill(process);
end

actions.kill_bad = function ()
	task.kill("asdf");
end

actions.close = function ()
	task.close(process);
end

actions.close_bad = function ()
	task.close("asdf");
end

actions.quit = function ()
	task.quit(process);
end

actions.quit_bad = function ()
	task.quit("asdf");
end

actions.list = function ()
	local tasks = task.list();
	for i,task in ipairs(tasks) do
		print(task.title);
	end
	print(task.list());
end
