# Creating a Telegram-Bot with Ruby

### Telegram installation steps
* Sign up and download a Telegram bot application
* Open the application on your Desktop and find BotFather in the Telegram list of   people in the search box
* Press the ‘Start’ button at the bottom of the dialog box
* Select ‘/newbot’ command from the list of option
* To create your personal Telegram-bot enter bot name and username
* Select a token that comprises characters that uniquely identify and authenticate your bot
* Congratulation! The registration of your Telegram bot is all done!

### File set up
1. Open the terminal and navigate to your root folder then enter the `bundle init` command in your terminal to initialize Gemfile
2. Open the Gamfile with any text editor and add the following information:

`source "https://rubygems.org"
git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }
gem 'telegram-bot-ruby'`

3. Then run `bundle` OR `gem install` telegram-bot-ruby to install the required dependencies
4. In your root directory create **bin** and **lib** folders 
5. Create an executable file named *main.rb* inside the **bin** folder as well as a *bot.rb* file inside the **lib** folder for storing the Telegram’s bot API. 

### Codding the Telegram-Bot
In the bot.rb file, you put code that consistently will be running on the server
The basic starting and ending messages in the Telegram-bot are shown in the code below:

![Example](code.png)

### The code description
- **telegram/bot** is a library installed via gem and used in this program
- **Token** - API token is required to access our bot through HTTPS. 
- **bot-listen** - is a method used to get updates and ensure that message is sent to the bot and ensure that the bot will print it on the console.
- **send_massage** is one of the Bot API methods whose function is to send a message to the current chat
- **chat_id-it** is a unique identifier of the user who uses the channel
- **text** – it is a message that is sent to the chat

### Start The Program
**/start** - the /start command begins an interaction with the user by sending a greeting message. 
**/stop** – the /stop command end interaction with the user by sending a goodbye message
**/jokes**, **/quotes**, **/sarcasm**. Memes are commands that assist a user in selecting desired services and avoid misspelling while typing the command.
