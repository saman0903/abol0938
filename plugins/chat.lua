local function run(msg)
if msg.text == "hi" then
	return "Hello\n"..msg.from.first_name
end
if msg.text == "Hi" then
	return "Hello\n"..msg.from.first_name
end
if msg.text == "Hello" then
	return "Hi\n"..msg.from.first_name
end
if msg.text == "hello" then
	return "Hi\n"..msg.from.first_name
end
if msg.text == "slm" then
	return " سلام عزیزم\n"
end
if msg.text == "Slm" then
	return "سلام عزیزم\n"
end
if msg.text == "salam" then
	return "سلام عزیزم\n"
end
if msg.text == "Salam" then
	return "سلام عزیزم\n"
end
if msg.text == "خوبی عشقم" and is_sudo (msg) then
	return "مسی عزیزم تو خوبی؟"
end
if msg.text == "چه خبر" then
	return "سلامتی خبری نیس"
end
if msg.text == "چخبر" then
	return "سلامتی خبری نیس"
end
if msg.text == "نوا" then
	return "چس اسپمر نگاییدم"
end
if msg.text == "نووا" then
	return "چس اسپمر نگاییدم"
end
if msg.text == "nova" then
	return "چس اسپمر نگاییدم"
end
if msg.text == "Nova" then
	return "چس اسپمر نگاییدم"
end
if msg.text == "bot" then
	return "هوم؟"
end
if msg.text == "xy" then
	return "😐چخه"
end
if msg.text == "Xy" then
	return "😐چخه"
end
if msg.text == "bye" then
	return "بای عزیزم\n"
end
if msg.text == "Bye" then
	return "بای عزیزم\n"
end
if msg.text == "bye" and is_sudo (msg) then
	return "بای عشقم\n"
end
if msg.text == "Bye" and is_sudo (msg) then
	return "بای عشقم\n"
end
if msg.text == "بای" then
	return "خدافظ\n"..msg.from.first_name
end
if msg.text == "سلام" and is_sudo(msg) then
  return "سلام عشقم"
   else
	return "سلام    "..msg.from.first_name
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
		"^[Hh]i$",
		"^[Hh]ello$",
		"^[Xx]y$",
   "^بای$",
   "^سلام$",
   "^خوبی$",
   "^چه خبر$",
   "^چخبر$",
   "^[Nn]ova$",
		"^[Bb]ot$",
		"^[Bb]ye$",
		"^[Ss]alam$",
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
