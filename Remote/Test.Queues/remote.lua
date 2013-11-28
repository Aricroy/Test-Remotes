events.preload = function ()
	print("preload")
end

events.create = function ()
	print("begin create")
	--libs.task.sleep(3000);
	print("end create")
end

events.focus = function ()
	print("begin focus")
	--libs.task.sleep(3000);
	print("end focus")
end

events.blur = function ()
	print("begin blur")
	libs.task.sleep(3000);
	print("end blur")
end

events.destroy = function ()
	print("begin destroy")
	libs.task.sleep(3000);
	print("end destroy")
end

actions.test = function ()
	print("begin test")
	libs.task.sleep(3000);
	print("end test")
end
