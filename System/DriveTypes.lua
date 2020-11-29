function Initialize()

	msTypeDrive1 = SKIN:GetMeasure('MeasureTypeDrive1')
	msTypeDrive2 = SKIN:GetMeasure('MeasureTypeDrive2')
	msTypeDrive3 = SKIN:GetMeasure('MeasureTypeDrive3')
	msSpaceDrive1 = SKIN:GetMeasure('MeasureTotalDrive1')
	msSpaceDrive2 = SKIN:GetMeasure('MeasureTotalDrive2')
	msSpaceDrive3 = SKIN:GetMeasure('MeasureTotalDrive3')
	
end

function Update()

	DriveType = {}
	DriveTotal = {}
	DriveType[1] = msTypeDrive1:GetStringValue()
	DriveType[2] = msTypeDrive2:GetStringValue()
	DriveType[3] = msTypeDrive3:GetStringValue()	
	DriveTotal[1] = msSpaceDrive1:GetValue()
	DriveTotal[2] = msSpaceDrive2:GetValue()
	DriveTotal[3] = msSpaceDrive3:GetValue()	
	
	for i = 1, 3 do
		if DriveType[i] == 'Removed' or DriveTotal[i] == 0 then
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Free', 'Text', 'Removed')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Bar', 'ImageAlpha', '1')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Text', 'FontColor', '140,140,140,255')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Free', 'FontColor', '140,140,140,255')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Text', 'TooltipText', '')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Text', 'LeftMouseUpAction', '')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Free', 'LeftMouseUpAction', '')
		elseif DriveType[i] == 'CDRom' then
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Free', 'Text', 'CD/DVD')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Bar', 'ImageAlpha', '1')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Text', 'FontColor', '#LabelColor#')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Free', 'FontColor', '#ValueColor#')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Text', 'TooltipText', '"CD/DVD"')
		else
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Free', 'Text', '%1 GB')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Bar', 'ImageAlpha', '255')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Text', 'FontColor', '#LabelColor#')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Free', 'FontColor', '#ValueColor#')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Text', 'TooltipText', 'Total:	[MeasureTotalDrive'..i..':/1073741824,1] GB#CRLF#Free:	[MeasureFreeDrive'..i..':/1073741824,1] GB#CRLF#Used:	[MeasureUsedDrive'..i..':/1073741824,1] GB')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Text', 'LeftMouseUpAction', '["#Drive'..i..'#"]')
			SKIN:Bang('!SetOption', 'MeterDrive'..i..'Free', 'LeftMouseUpAction', '["#Drive'..i..'#"]')
		end
	end
	
	return 'Complete'
	
end
