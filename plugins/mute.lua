local function run(msg,matches)
local hour = 3600
if is_momod(msg) then
if matches[1]:lower() == "سایلنت" then
local num = tonumber(matches[2]) * hour
redis:setex("muteall:"..msg.to.id,num,true)
return "گروه برای "..matches[2].." ساعت موت آل شد"
elseif matches[1]:lower() == "-سایلنت" then
redis:del("muteall:"..msg.to.id)
return "گروه آن میوت شد"
end
elseif not is_momod(msg) then
if redis:get("muteall:"..msg.to.id) then
delete_msg(msg.id,ok_cb,false)
end
end
end
return {
patterns = {
"^(سایلنت) (.*)$",
"^-سایلنت$",
"^(.*)$"
},
run = run,
}