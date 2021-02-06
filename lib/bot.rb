# rubocop:disable Layout/LineLength
# rubocop:disable Metrics/MethodLength

require 'telegram/bot'
require 'dotenv'
Dotenv.load('token.env')
require_relative 'programmers_quotes'
require_relative 'programmers_jokes'

# lib/Description of Jokes class
class Bot
  def initialize
    Telegram::Bot::Client.run(ENV['TOKEN']) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id,
                               text: "Hello #{message.from.first_name},\n Welcome to Mina's Telegram-Bot")
          bot.api.send_message(chat_id: message.chat.id,
                               text: 'Please select /quotes or /jokes to run the program')
        when '/quotes'
          quote = Quotes.new
          bot.api.send_message(chat_id: message.chat.id,
                               text: "#{quote.rand_quotes}\n Select more /quotes")
          bot.api.send_message(chat_id: message.chat.id,
                               text: 'You may choose other options like 👉 /jokes 😅 or /stop 🛑 to end the program')
        when '/jokes'
          joke = Jokes.new
          bot.api.send_photo(chat_id: message.chat.id, photo: joke.jokes)
          bot.api.send_message(chat_id: message.chat.id,
                               text: 'Select more /jokes')
          bot.api.send_message(chat_id: message.chat.id,
                               text: 'You may choose other options like 👉 /quotes 👩‍💻 or /stop 🛑 to end the program')
        when '/stop'
          bot.api.send_message(chat_id: message.chat.id,
                               text: "Bye, #{message.from.first_name} I Hope You Enjoy Your Day Quotes And Jokes")
        else
          bot.api.send_message(chat_id: message.chat.id,
                               text: 'Please enter /start /stop /programers_quotes /programers_jokes to run the program')
        end
      end
    end
  end
end
# rubocop:enable Metrics/MethodLength
# rubocop:enable Layout/LineLength
