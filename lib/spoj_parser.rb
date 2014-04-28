require 'nokogiri'

class SpojParser
  def initialize(html)
    @doc = Nokogiri::HTML(html)
  end

  def problem_exists?
    !@doc.css('table.problems').empty?
  end

  def problem_solved?
    !@doc.css('form table.problems tr > td').empty?
  end

  def languages
    links = @doc.xpath("//table[@class='navigation' and count(tr/td)=1]//a")
    links.map do |link|
      [link['title'],
       link['href'][/(?<=lang=).*/].gsub('%20', ' ')]
    end
  end
end
