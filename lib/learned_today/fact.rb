class LearnedToday::Fact
attr_reader :fact, :joke, :qoute, :thought

def initialize(doc3)
  @fact = doc3.search('div.content-sidebar-wrap p')[2].text
  @joke = doc3.search('div.content-sidebar-wrap p')[1].text
  @qoute = doc3.search('div.content-sidebar-wrap p')[0].text
  @thought = doc3.search('div.content-sidebar-wrap p')[3].text
end

end
