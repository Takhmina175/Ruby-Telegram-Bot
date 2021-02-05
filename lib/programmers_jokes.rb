# lib/Description of Sarcasm class
class Jokes
  attr_reader :sarcasm

  def initialize
    @sarcasm = [
      'https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/96066463_237835897651629_218018501359566848_n.jpg?_nc_cat=102&ccb=2&_nc_sid=730e14&_nc_ohc=bYiboZ9tMDkAX9TYMAW&_nc_ht=scontent.fesb4-2.fna&oh=644efcb5e8734962296410076810a1ca&oe=603F0903',

      'https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/96213929_235636257871593_4578597792242466816_o.jpg?_nc_cat=109&ccb=2&_nc_sid=730e14&_nc_ohc=BUELkHlh6xMAX-Rs2FQ&_nc_ht=scontent.fesb4-2.fna&oh=2d89a9d892d82ffb08134cd0c63751eb&oe=603F1F85',

      'https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/92290405_215930086508877_4548389891385327616_o.jpg?_nc_cat=109&ccb=2&_nc_sid=730e14&_nc_ohc=zsa7R2RsUoUAX8ilcM6&_nc_ht=scontent.fesb4-2.fna&oh=1f94d680f7ccc27642b93891ebbeb22b&oe=603E919A',

      'https://scontent.fesb4-1.fna.fbcdn.net/v/t1.0-9/82805031_154800129288540_1573924459637637120_n.jpg?_nc_cat=105&ccb=2&_nc_sid=730e14&_nc_ohc=PlZD1sMEAvoAX_YA66g&_nc_oc=AQnqAhKPnSBw0vOvocDUeA6pGWgLtYUUQZcNxlXACVoJbuSTozGczr_-0FyhvBDaqm0&_nc_ht=scontent.fesb4-1.fna&oh=a15403caa4809e2939966bb858f70eda&oe=603D14FC',

      'https://miro.medium.com/max/590/1*uG60w6w0Fw0SnXgv3j427Q.png',

      'https://pbs.twimg.com/media/DThEf4hV4AAb-jR?format=jpg&name=small',

      'https://pbs.twimg.com/media/DTRnuhMVMAEKuzH?format=jpg&name=small',

      'https://pbs.twimg.com/media/Eh86sXJWAAENleh?format=jpg&name=small'

    ]
  end

  def random_jokes
    @sarcasm.sample
  end
end
