function Initialize()

	msPhysicalTotal = SKIN:GetMeasure('MeasurePhysMemTotal')
	msPhysicalUsed = SKIN:GetMeasure('MeasurePhysMemUsed')
	msPhysicalFree = SKIN:GetMeasure('MeasurePhysMemFree')
	msSwapTotal = SKIN:GetMeasure('MeasureSwapMemTotal')
	msSwapUsed = SKIN:GetMeasure('MeasureSwapMemUsed')
	msSwapFree = SKIN:GetMeasure('MeasureSwapMemFree')
	msPageTotal = SKIN:GetMeasure('MeasurePageTotal')
	msPageUsed = SKIN:GetMeasure('MeasurePageUsed')
	msPageFree = SKIN:GetMeasure('MeasurePageFree')	
	
end

function Update()

	physicalTotal, s1 = AutoScale(msPhysicalTotal:GetValue(),1)
	physicalUsed, s2 = AutoScale(msPhysicalUsed:GetValue(),1)
	physicalFree, s3 = AutoScale(msPhysicalFree:GetValue(),1)
	SKIN:Bang('!SetVariable', 'PhysicalTotal', physicalTotal .. ' ' ..s1)
	SKIN:Bang('!SetVariable', 'PhysicalUsed', physicalUsed .. ' ' ..s2)
	SKIN:Bang('!SetVariable', 'PhysicalFree', physicalFree .. ' ' ..s3)
	SwapTotal, s1 = AutoScale(msSwapTotal:GetValue(),1)
	SwapUsed, s2 = AutoScale(msSwapUsed:GetValue(),1)
	SwapFree, s3 = AutoScale(msSwapFree:GetValue(),1)
	SKIN:Bang('!SetVariable', 'SwapTotal', SwapTotal .. ' ' ..s1)
	SKIN:Bang('!SetVariable', 'SwapUsed', SwapUsed .. ' ' ..s2)
	SKIN:Bang('!SetVariable', 'SwapFree', SwapFree .. ' ' ..s3)
	PageTotal, s1 = AutoScale(msPageTotal:GetValue(),1)
	PageUsed, s2 = AutoScale(msPageUsed:GetValue(),1)
	PageFree, s3 = AutoScale(msPageFree:GetValue(),1)
	SKIN:Bang('!SetVariable', 'PageTotal', PageTotal .. ' ' ..s1)
	SKIN:Bang('!SetVariable', 'PageUsed', PageUsed .. ' ' ..s2)
	SKIN:Bang('!SetVariable', 'PageFree', PageFree .. ' ' ..s3)	
	
	return
	
end

function AutoScale(num, idp)
	assert(tonumber(num), 'AutoScale expects a number.')
	local scales = {'B', 'kB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'}
	local places = idp or 0
	local scale = ""
	local scaled = 0

	for i, v in ipairs(scales) do
		if (num < (1024 ^ i)) or (i == #scales) then
			scale = v
			scaled = Round(num / 1024 ^ (i - 1), places)
			if scaled % 1 == 0 then
				scaled = scaled .. '.0'
			end
			break
		end
	end

	return scaled, scale
end

function Round(num, idp)
	assert(tonumber(num), 'Round expects a number.')
	local mult = 10 ^ (idp or 0)
	if num >= 0 then
		return math.floor(num * mult + 0.5) / mult
	else
		return math.ceil(num * mult - 0.5) / mult
	end
end

