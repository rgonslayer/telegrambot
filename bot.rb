require 'telegram_bot'
	token = '1995077072:AAGhKpp---ne2IPdbZrJr2pHEbSej7SQ1Hs'
bot = TelegramBot.new(token: token)


	bot.get_updates(fail_silently: true) do |message|
	puts "@#{message.from.username}: #{message.text}"
command = message.get_command_for(bot)

	message.reply do |reply|
	case command
	when /hi/i
	reply.text = "hi babe! It is 6 days to valentines day, do u have a valentines?"
when "no!"
	reply.text = "then do u want to be dylen's valentines?"
when "yes!"
	reply.text = "okies! i will let him know! so do u want to go on a picnic next week with him? or do u wanna go see some dinosaurs!"

when "picnic!"
	reply.text = "okay! you have a valentines date with dylen now! he will tell u more later!"
when "dinosaurs!"
	reply.text = "okay! you have a dinosaur date with dylen next week for valentines! he will tell u more later!"



	else
	reply.text = "sorry bb idk what #{command.inspect} means"
	end
	puts "sending #{reply.text.inspect} to @#{message.from.username}"
reply.send_with(bot)
	end
	end
