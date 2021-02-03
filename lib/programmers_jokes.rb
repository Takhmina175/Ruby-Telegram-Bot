class Jokes
    attr_reader :jokes

    def initialize
        @jokes = ['https://miro.medium.com/max/590/1*uG60w6w0Fw0SnXgv3j427Q.png', 'https://pbs.twimg.com/media/DThEf4hV4AAb-jR?format=jpg&name=small', 'https://pbs.twimg.com/media/DTRnuhMVMAEKuzH?format=jpg&name=small', 'https://pbs.twimg.com/media/Eh86sXJWAAENleh?format=jpg&name=small'
        ]
    end
    def random_jokes
        @jokes.sample
    end 
    
end