
-- Metadata

events.action = function (name, extras)
	print("action: " .. name);
end

actions.change = function (checked)
	local b = "";
	if (checked) then 
		b = "true";
	else 
		b = "false";
	end
	print("action: change: " .. b);
end

actions.abs = function (id, x, y)
	print("x: " .. x .. " y: " .. y);
end
