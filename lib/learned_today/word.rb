class LearnedToday::Word
attr_reader :pronu, :wotd, :pos, :def

def initialize(doc)
  @wotd = doc.search('div.otd-item-headword__word')[0].text.strip
  @pos = doc.search('span.luna-pos')[0].text.strip
  @pronu = doc.search('div.otd-item-headword__pronunciation')[0].text.strip
  @def = doc.css('p')[2].text
end



end
