require 'nokogiri'

class SpojParser
  def initialize(html)
    @doc = Nokogiri::HTML(html)
  end

  def problem_exists?
    !@doc.css('table.problems').empty?
  end
end
