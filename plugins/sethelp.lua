do
local function run(msg, matches)

hashfun = 'bot:help:fun'
hashmods = 'bot:help:mods'
hashadmin = 'bot:help:admin'
hashver = 'bot:ver'
hash = 'bot:help'


if matches[1] == 'تنظیم راهنما تفریح' then
if not is_sudo(msg) then return end
redis:set(hashfun,'waiting:'..msg.from.id)
return 'متن مورد نظر را ارسال کنید!'
else
if redis:get(hashfun) == 'waiting:'..msg.from.id then
redis:set(hashfun,msg.text)
return 'انجام شد!'
end
end

if matches[1] == 'تنظیم راهنما مدیر' then
if not is_sudo(msg) then return end

redis:set(hashmods,'waiting:'..msg.from.id)
return 'لطفا متن مورد نظر را ارسال کنید!'
else
if redis:get(hashmods) == 'waiting:'..msg.from.id then
redis:set(hashmods,msg.text)
return 'انجام شد!'
end
end


if matches[1] == 'تنظیم راهنما ادمین' then
if not is_sudo(msg) then return end

redis:set(hashadmin,'waiting:'..msg.from.id)
return 'لطفا متن مورد نظر را ارسال کنید!'
else
if redis:get(hashadmin) == 'waiting:'..msg.from.id then
redis:set(hashadmin,msg.text)
return 'انجام شد!'
end
end

if matches[1] == 'تنظیم راهنما' then
if not is_sudo(msg) then return end
redis:set(hash,'waiting:'..msg.from.id)
return 'لطفا متن مورد نظر را ارسال کنید!'
else
if redis:get(hash) == 'waiting:'..msg.from.id then
redis:set(hash,msg.text)
return 'انجام شد!'
end
end

if matches[1] == 'تنظیم ورژن' then
if not is_sudo(msg) then return end
redis:set(hashver,'waiting:'..msg.from.id)
return 'متن مورد نظر را ارسال کنید!'
else
if redis:get(hashver) == 'waiting:'..msg.from.id then
redis:set(hashver,msg.text)
return 'انجام شد!'
end
end


if matches[1] == 'راهنما تفریح' then
if not is_momod(msg) then return end
return redis:get(hashfun)
end

if matches[1] == 'راهنما' then
if not is_momod(msg) then return end
return redis:get(hash)
end

if matches[1] == 'راهنما مدیر' then
if not is_momod(msg) then return end
return redis:get(hashmods)
end


if matches[1] == 'راهنما ادمین' then
if not is_admin(msg) then return end
return redis:get(hashadmin)
end

if matches[1] == 'ورژن' then
return redis:get(hashver)
end

end

return {
    patterns = {
        '^تنظیم راهنما تفریح$',
        '^تنظیم راهنما ادمین$',
        '^تنظیم راهنما مدیر$',
        '^تنظیم راهنما$',
        '^راهنما تفریح$',
        '^راهنما مدیر$',
        '^راهنما ادمین$',
        '^راهنما$',
        '^تنظیم ورژن$',
        '^ورژن$',
        '(.*)',
    },
    run = run,
    pre_process = pre_process
}
end