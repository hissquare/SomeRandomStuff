-- [[ Coded By Space#3245 You Cunt! ]] --

local StarId = {
	[60935213] = true,
	[530191889] = true,
	[1628316979] = true,
	[2857717795] = true,
	[2788184005] = true,
	[3207880708] = true,
	[2932921962] = true,
	[273745938] = true,
	[2562629415] = true,
	[1788647547] = true,
	[1274852399] = true,
	[1092029300] = true,
	[3270320985] = true,
	[3376845876] = true,
	[2551611755] = true,
	[2832101336] = true,
}

local CrownId = {}

local DiamondId = {
	[2819726490] = true,
	[953043143] = true,
	[99087422] = true,
}

function premium()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if StarId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
				end
			end
		elseif CrownId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
				end
			end
		elseif DiamondId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎]'..v.DisplayName)
				end
			end
		elseif v.Character then
			if v.Character.Parent.Name == 'Players' then
				if not v.Character.UpperTorso:FindFirstChild('BodyBackAttachment') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🙂]'..v.DisplayName)
				end
			end
		end
	end
end
local success,err = pcall(premium)
