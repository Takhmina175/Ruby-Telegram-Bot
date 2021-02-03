require 'telegram/bot'
require_relative 'programmers_quotes'
require_relative 'programmers_sarcasm'
require_relative 'programmers_jokes'

class Bot
token = '1692098067:AAFu4RgK5nzEysDpumc6Ch8ruDSRp90JOR0'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
        bot.api.send_message(chat_id: message.chat.id, text: "Hello #{message.from.first_name},\n Welcome to Mina's Telegram-Bot \n Please select any of the given link to receive your: /quotes, /jokes, or /sarcasm")
    when '/quotes'
        quotes = Quotes.new
        bot.api.send_message(chat_id: message.chat.id, text: "#{quotes.random_quotes}\n Select /quotes for more quotes")
         bot.api.send_message(chat_id: message.chat.id, text: "You can select other options as well 👉 /sarcasm 😂, /jokes 😅 or /stop 🛑")
    when '/sarcasm'
        sarcasm = Sarcasm.new
        bot.api.send_photo(chat_id: message.chat.id, photo: sarcasm.random_sarcasm)
        bot.api.send_message(chat_id: message.chat.id, text: "Select /sarcasm for more sarcasm photos or You may choose other options as 👉 /sarcasm 😂, /jokes 😅 or /stop 🛑")
    when '/jokes'
        jokes = Jokes.new
        bot.api.send_photo(chat_id: message.chat.id, photo: jokes.random_jokes)
        bot.api.send_message(chat_id: message.chat.id, text: "Select /jokes for more joke photos or You may choose other options as 👉 /sarcasm 😂, /jokes 😅 or /stop 🛑")
    when '/stop'
        bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name} I Hope You Enjoy Received Quotes And Jokes")
    else
        bot.api.send_message(chat_id: message.chat.id, text: 'Invalid input, Please enter /start /stop /programers_quotes /programers_jokes /programers_sarcasm')
    end
  end
 end
end