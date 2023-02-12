-- Roblox-HTTPS-Checker
-- This script helps check if HTTPS requests are on.

local httpService = game:GetService('HttpService')
local successful, result = pcall(httpService.GetAsync, httpService, 'https://google.com')
if successful then
    print('HTTP requests are enabled!')
elseif result:lower():find('http requests are not enabled') then
    warn('HTTP requests are not enabled!')
else
    warn('Invalid HTTP request:',result)
end
