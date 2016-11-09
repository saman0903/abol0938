local function run(msg, matches)
local sticker = send_document(get_receiver(msg), "./logo/ping.webp", ok_cb, false)
 if is_sudo(msg) then
return sticker
else
return 'شما سودو نیستید -_-'
end
end

  return {
  patterns = {
  "^پینگ$"
  
  },
  run = run
  }