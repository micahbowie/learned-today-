class LearnedToday::News
  attr_reader :title, :link, :prev

  def initialize(doc2)
    @title = doc2.search('h2.g1-alpha.g1-alpha-1st.entry-title a')[0].text
    @link = doc2.search('h2.g1-alpha.g1-alpha-1st.entry-title a')[0]['href']
    @prev = doc2.search('div.entry-summary p')[0].text
  end


end
