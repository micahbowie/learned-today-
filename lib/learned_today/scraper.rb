class LearnedToday::Scraper

  def self.fetch
  doc = Nokogiri::HTML(open("https://www.dictionary.com/e/word-of-the-day/"))
    @@wotd = doc.search('div.otd-item-headword__word')[0].text.strip
    @@pos = doc.search('span.luna-pos')[0].text.strip
    @@pronu = doc.search('div.otd-item-headword__pronunciation')[0].text.strip
    @@def = doc.css('p')[2].text
  doc2 = Nokogiri::HTML(open("https://tanksgoodnews.com/"))
    @@title = doc2.search('h2.g1-alpha.g1-alpha-1st.entry-title a')[0].text
    @@link = doc2.search('h2.g1-alpha.g1-alpha-1st.entry-title a')[0]['href']
    @@prev = doc2.search('div.entry-summary p')[0].text
  doc3 = Nokogiri::HTML(open("https://www.beagreatteacher.com/daily-fun-fact/"))
    @@fact = doc3.search('div.content-sidebar-wrap p')[2].text
    @@joke = doc3.search('div.content-sidebar-wrap p')[1].text
    @@qoute = doc3.search('div.content-sidebar-wrap p')[0].text
    @@thought = doc3.search('div.content-sidebar-wrap p')[3].text
  end

  def self.wotd_arry
    wotd_arry = [@@wotd, @@pos, @@pronu, @@def]
  end

  def self.goodnews_arry
    goodnews_arry = [@@title, @@link, @@prev]
  end

  def self.otherlearn_arry
    otherlearn_arry = [@@fact,@@joke,@@qoute,@@thought]
  end


end
