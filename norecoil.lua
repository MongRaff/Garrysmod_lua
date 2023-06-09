concommand.Add("norec_toggle",function()
	norec = not norec
	if norec then
		hook.Add("CalcView","NoRecoil",function(ply,pos,ang,fov)
			local view = {
				angles = ply:EyeAngles(),
			}
			return view
		end)
		print("norecoil enabled")
	else
		hook.Remove("CalcView","NoRecoil")
		print("norecoil disabled")
	end
end)