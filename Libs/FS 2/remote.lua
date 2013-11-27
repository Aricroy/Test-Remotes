
-- Metadata

local fs = libs.fs;

function update(s)
	libs.server.update("info", "text", s);
end

actions.exists = function ()
	local r = fs.exists("C:\\Windows");
	update(r);
end

actions.exists_bad = function ()
	local r = fs.exists("C:\\Windosdlkfjsdlf");
	update(r);
end

actions.copy = function ()
	fs.copy("C:\\foo.txt", "C:\\bar.txt");
end

actions.copydir = function ()
	fs.copy("C:\\foo\\", "C:\\bar\\");
end

actions.move = function ()
	fs.move("C:\\foo.txt", "C:\\foo2.txt");
end

actions.movedir = function ()
	fs.move("C:\\foo\\", "C:\\foo2\\");
end

actions.rename = function ()
	fs.rename("C:\\foo.txt", "C:\\fooX.txt");
end

actions.renamedir = function ()
	fs.rename("C:\\foo\\", "C:\\fooX\\");
end

actions.delete = function ()
	fs.delete("C:\\foobar.txt");
end

actions.deletedir = function ()
	fs.delete("C:\\foobar\\");
end

actions.deleterec = function ()
	fs.delete("C:\\foorec\\", true);
end

actions.path = function ()
	local r = fs.path("C:\\Windows\\");
	update(r);
end

actions.expand = function ()
	local r = fs.expand("%SystemRoot%");
	update(r);
end

actions.createdir = function ()
	fs.createdir("C:\\asdfasdf\\");
end

actions.createdirs = function ()
	fs.createdirs("C:\\asdf\\a\\b\\c\\d\\e");
end

actions.createfile = function ()
	fs.createfile("C:\\asdf.txt");
end
