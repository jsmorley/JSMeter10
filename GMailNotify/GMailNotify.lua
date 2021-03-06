function Initialize()

	currentPath = SKIN:GetVariable('CURRENTPATH')
	currentConfig = SKIN:GetVariable('CURRENTCONFIG')
	measureMail = SKIN:GetMeasure('MeasureMail')
	measureIsFullScreen = SKIN:GetMeasure('MeasureIsFullScreen')
	delaySeconds = SKIN:GetVariable('DelaySeconds')
	recentMinutes = SKIN:GetVariable('RecentMinutes')
	
end

function Update()

		recentMail = 0
		
		rawFeed = measureMail:GetStringValue()
		if rawFeed == '' then return end
		
		numUnread = tonumber(string.match(rawFeed, '.<fullcount>(.-)</fullcount>'))

		if numUnread > 0 then
		
			itemTitle = string.match(rawFeed, '<entry><title>(.-)</title>')
			itemAuthor = string.match(rawFeed, '<author><name>(.-)</name>')
		
			itemModified = string.match(rawFeed, '<entry>.-<modified>(.-)</modified>')
			year, month, day, hour, min, sec, zone =
			string.match(itemModified, "(%d%d%d%d)-(%d%d)-(%d%d)T(%d%d):(%d%d):(%d%d)(%a)")
			itemTimestamp = os.time({year=year, month=month, day=day, hour=hour, min=min, sec=sec, isdst=false})

			nowTime = os.time(os.date('!*t'))
			thenTime = itemTimestamp
			diffTime = (nowTime - thenTime) / 60
			if diffTime < tonumber(recentMinutes) then
				recentMail = 1
			end			
		
			newestFile = io.open(currentPath..'Newest.txt', 'r')
			if not newestFile then
				newestFile = io.open(currentPath..'Newest.txt', 'w')
				newestFile:write(itemTimestamp - 1)
				newestFile:close()
				print('GMailNotify: Created '..currentPath..'Newest.txt')
				newestFile = io.open(currentPath..'Newest.txt', 'r')
			end	
			newestItem = newestFile:read()
			newestFile:close()
		
			if measureIsFullScreen:GetValue() < 1 then
				if tonumber(newestItem) < tonumber(itemTimestamp) then
					newestFile = io.open(currentPath..'Newest.txt', 'w')
					newestFile:write(itemTimestamp)
					newestFile:close()
			
					SKIN:Bang('!ActivateConfig', currentConfig..'\\FlyOut', 'FlyOut.ini')
					SKIN:Bang('!SetVariable', 'AuthorText', itemAuthor, currentConfig..'\\FlyOut')
					SKIN:Bang('!SetVariable', 'TitleText', itemTitle, currentConfig..'\\FlyOut')
					SKIN:Bang('!SetVariable', 'DelaySeconds', delaySeconds, currentConfig..'\\FlyOut')
					SKIN:Bang('!UpdateMeter', '*', currentConfig..'\\FlyOut')
					SKIN:Bang('!CommandMeasure', 'MeasureSlider', 'Execute 1', currentConfig..'\\FlyOut')
				end
			end
		
		end
		
		if numUnread > 0 then
			SKIN:Bang('!SetOption', 'MeterImage', 'GreyScale', '0')
			SKIN:Bang('!SetOption', 'MeterImage', 'ImageAlpha', '255')
			if recentMail == 1 then
				SKIN:Bang('!MoveMeter', '154', '14', 'MeterCount')
				SKIN:Bang('!SetOption', 'MeterCount', 'Text', numUnread..' Unread#CRLF#Recent')
			else	
				SKIN:Bang('!MoveMeter', '154', '22', 'MeterCount')
				SKIN:Bang('!SetOption', 'MeterCount', 'Text', numUnread..' Unread')
			end
			SKIN:Bang('!SetOption', 'MeterCount', 'FontColor', '#ValueColor#')
			SKIN:Bang('!SetOption', 'MeterImage', 'ToolTipText', numUnread..' unread in Inbox#CRLF#'..itemAuthor..'#CRLF#'..itemTitle)
		else
			SKIN:Bang('!SetOption', 'MeterImage', 'GreyScale', '1')
			SKIN:Bang('!SetOption', 'MeterImage', 'ImageAlpha', '180')
			SKIN:Bang('!MoveMeter', '154', '22', 'MeterCount')
			SKIN:Bang('!SetOption', 'MeterCount', 'Text', 'No Unread')
			SKIN:Bang('!SetOption', 'MeterCount', 'FontColor', '#LabelColor#')
			SKIN:Bang('!SetOption', 'MeterImage', 'ToolTipText', 'No unread in Inbox')
		end

		return
		
end		
