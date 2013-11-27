
-- Metadata

events.create = function ()
	print("create");
end

events.focus = function ()
	print("  focus");
end

events.blur = function ()
	print("  blur");
end

events.destroy = function ()
	print("destroy");
end

events.preaction = function (name, extras)
	print("  pre-action: " .. name);
	if (name == "failpreaction") then
		return false;
	else
		return true;
	end
end

events.action = function (name, extras)
	print("    " .. name);
end

events.postaction = function (name, extras)
	print("  post-action: " .. name);
end

actions.defined = function ()
	print ("    defined!");
end

actions.failpreaction = function ()
	
end
