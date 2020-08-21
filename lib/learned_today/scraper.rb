class LearnedToday::Scraper

  def self.fetch_wotd
  doc = Nokogiri::HTML(open("https://www.dictionary.com/e/word-of-the-day/"))
  LearnedToday::Word.new(doc)
  end

  def self.fetch_news
  doc2 = Nokogiri::HTML(open("https://tanksgoodnews.com/"))
  LearnedToday::News.new(doc2)
  end

  def self.fetch_facts
  doc3 = Nokogiri::HTML(open("https://www.beagreatteacher.com/daily-fun-fact/"))
    LearnedToday::Fact.new(doc3)
  end

  # def self.word_otd
  #   Word.new
  # end
  # def self.wotd_arry
  #   wotd_arry = [@@wotd, @@pos, @@pronu, @@def]
  # end
  #
  # def self.goodnews_arry
  #   goodnews_arry = [@@title, @@link, @@prev]
  # end
  #
  # def self.otherlearn_arry
  #   otherlearn_arry = [@@fact,@@joke,@@qoute,@@thought]
  # end


end
