
-- Metadata

function update(s)
	libs.server.update("info", "text", s);
end

actions.epoch = function ()
	update(os.time());
end

actions.short = function ()
	update(os.date("%c"));
end

actions.long = function ()
	update(os.date("%A, %B %d, %I:%M:%S"));
end

actions.table = function ()
	update(libs.data.tojson(os.date("*t")));
end
