
-- Metadata

function update(items)
	local listItems = {};
	for i=1,#items do
		table.insert(listItems, { type = "item", text = items[i] });
	end
	libs.server.update({ id = "list", children = listItems });
end

actions.remfile = function ()
	update({ libs.fs.remotefile() });
end

actions.remdir = function ()
	update({ libs.fs.remotedir() });
end

actions.working = function ()
	update({ libs.fs.workingdir() });
end

actions.app = function ()
	update({ libs.fs.appdir() });
end

actions.home = function ()
	update({ libs.fs.homedir() });
end

actions.files1 = function ()
	update( libs.fs.files("C:\\Windows") );
end

actions.files2 = function ()
	update( libs.fs.files("C:\\Windows\\") );
end

actions.dirs = function ()
	update( libs.fs.dirs("C:\\") );
end

actions.list = function ()
	update( libs.fs.list("C:\\") );
end

actions.roots = function ()
	update( libs.fs.roots() );
end

actions.parent = function ()
	update({ 
		libs.fs.parent("C:\\Windows\\notepad.exe"),
		libs.fs.parent("C:\\Windows\\"),
		libs.fs.parent("C:\\Windows"),
		libs.fs.parent("C:\\")
	});
end

actions.name = function ()
	update({ 
		libs.fs.name("C:\\Windows\\notepad.exe"),
		libs.fs.name("C:\\Windows\\"),
		libs.fs.name("C:\\Windows"),
		libs.fs.name("C:\\")
	});
end

actions.fullname = function ()
	update({ 
		libs.fs.fullname("C:\\Windows\\notepad.exe"),
		libs.fs.fullname("C:\\Windows\\"),
		libs.fs.fullname("C:\\Windows"),
		libs.fs.fullname("C:\\")
	});
end

actions.extension = function ()
	update({ 
		libs.fs.extension("C:\\Windows\\notepad.exe"),
		libs.fs.extension("C:\\Windows\\"),
		libs.fs.extension("C:\\Windows")
	});
end

actions.combine = function ()
	update({
		libs.fs.combine("C:\\", "Windows"),
		libs.fs.combine("Windows", "test.txt"),
		libs.fs.combine("C:\\", "test.txt"),
		libs.fs.combine("C:\\Windows", "test.txt"),
		libs.fs.combine("C:\\Windows\\", "test.txt"),
		libs.fs.combine("C:\\", "Windows", "test.txt")
	});
end

actions.make_path = function ()
	print(libs.fs.path("%windir%/notepad.exe"));
	update({
		libs.fs.path("%windir%/notepad.exe")
	});
end
