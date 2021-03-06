function AddSuffix(num)
	assert(tonumber(num), 'AddSuffix expects a number.')
	local suffix = ''

	local n = num % 10

	if (num - n) == 10 then
		suffix = 'th'
	else
		suffix = (n == 1 and 'st' or n == 2 and 'nd' or n == 3 and 'rd' or 'th')
	end

	return suffix
end