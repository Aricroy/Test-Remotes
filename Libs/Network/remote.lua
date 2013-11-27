
-- Metadata

local http = libs.http;

actions.google = function ()
	local r = http.get("http://www.google.com");
	libs.server.update({ id="info", text=r });
end

actions.request = function ()
	local r = http.request({
		url = "http://www.unifiedremote.com"
	});
	libs.server.update({ id="info", text=r.status });
end

actions.post = function ()
	local r = http.post("http://www.unifiedremote.com", "asdfasdf");
	libs.server.update({ id="info", text=r });
end

actions.http = function ()
	local r = http.get("http://www.unifiedremote.com");
	libs.server.update({ id="info", text=r });
end

actions.https = function ()
	local r = http.get("https://embed.spotify.com/?uri=spotify:user:phb5000:playlist:60WGD1OLz5tU9KLvnhjHNQ");
	libs.server.update({ id="info", text=r });
end

actions.image = function ()
	local r = http.get("http://nuclearpixel.com/content/icons/2010-02-09_stellar_icons_from_space_from_2005/earth_128.png");
	
	local file = io.open("C:\\test.png", "wb");
    file:write(r);
    file:close();
	
	libs.server.update("file", "image", "C:\\test.png");
	libs.server.update("binary", "image", r);
end
