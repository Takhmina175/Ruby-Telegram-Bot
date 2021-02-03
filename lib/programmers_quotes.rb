class Quotes
    attr_reader :quotes

    def initialize
        @quotes = ['Any fool can write code that a computer can understand. Good programmers write code that humans can understand. ― Martin Fowler',
            
        "I' m not a great programmer; I'm just a good programmer with great habits.― Kent Beck",

        'The most important property of a program is whether it accomplishes the intention of its user. ― C.A.R. Hoare',

        'A son asked his father (a programmer) why the sun rises in the east, and sets in the west. His response? It works, don’t touch!',

        'Always code as if the person who ends up maintaining your code will be a violent psychopath who knows where you live.',

        '99 little bugs in the code. 99 little bugs in the code. Take one down, patch it around. 127 little bugs in the code.'
        ]
    end
    def random_quotes
        @quotes.sample
    end
end