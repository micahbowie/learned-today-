class LearnedToday::CLI

  def call
    @@wotd = LearnedToday::Scraper.fetch_wotd
    @@news = LearnedToday::Scraper.fetch_news
    @@facts = LearnedToday::Scraper.fetch_facts
    system ("cls")
    LearnedToday::Opening.welcome
    LearnedToday::Opening.time_greeting
    gets_name
    LearnedToday::Opening.menu
    topic_list
    input_choice
    bye_for_now
  end

  def topic_list
    puts ""
    puts "What do you want to learn today #{@@name_array[0]}?".yellow
    further_input
  end

  def input_choice
    user_input = nil
    while user_input != 'exit'
      user_input = gets.strip
      case user_input
      when '1'
        clear
        wotd
        further_input
      when '2'
       clear
       goodnews
       further_input
     when '3'
       clear
       fact
       further_input
     when '4'
       clear
       qoute
       further_input
     when '5'
       clear
       thought
       further_input
     when 'joke'
       clear
       joke
       further_input
     when 'exit'
       clear
       puts 'Closing App'.red
     when 'rundown'
      clear
      wotd
      goodnews
      fact
      qoute
      thought
      joke
      further_input
    when 'menu'
      clear
      LearnedToday::Opening.header
      LearnedToday::Opening.menu
      further_input
    when 'clear'
      clear
    else
       puts 'Input not understood.'.red
       sleep 1.3
       clear
       LearnedToday::Opening.menu
       further_input
    end
  end
  end


  def bye_for_now
    puts 'Bye for now! There will be more for you to learn tomorrow!'
  end

  def clear
    system 'cls'
  end

  def wotd
    puts 'The Word of the day is:'.green
    puts ''
    puts "#{@@wotd.wotd} #{@@wotd.pronu}".light_green
    puts "#{@@wotd.def} "
    puts ""
  end

  def goodnews
    puts 'Here is a article that will lift your spirits:'.green
    puts ""
    puts "#{@@news.title}".light_green
    puts "#{@@news.prev} "
    puts ""
    puts "Here is the link to the full story:"
    puts "#{@@news.link}".light_blue
    puts ""
  end

  def fact
    puts 'Here is your random fact of the day:'.green
    puts "#{@@facts.fact}".light_green
    puts ''
  end

  def qoute
    puts 'The qoute today is:'.green
    puts "#{@@facts.qoute}".light_green
    puts ''
  end

  def thought
    puts 'Thought of the day:'.green
    puts "#{@@facts.thought}".light_green
    puts ''
  end

  def joke
    puts 'The joke for today is:'.green
    puts "#{@@facts.joke}".light_green
    puts ''
  end

  def further_input
    puts '1.Word of the day | 2.Good news | 3.Fact of the day |  4.Quote | 5.Thought of the day'
    puts "You can also type keyword joke to hear a joke."
    puts 'Enter the number of the category you want learn next:'
  end

  def gets_name
    name_input = nil
    @@name_array = []
    puts 'Hello friend, input what you would like me to call you:'
    name_input = gets.strip
    @@name_array << name_input
    clear
    puts "Got it! I will call you #{@@name_array[0]}"
    sleep 2
    clear
end

end
