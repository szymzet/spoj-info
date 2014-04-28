require 'sinatra/base'
require 'json'
require 'open-uri'

require_relative 'spoj_parser'

class SpojInfoApp < Sinatra::Application

  get '/problem/:problem/lang/:lang' do
    content_type('application/json')

    html = rank_html(params['problem'], params['lang'])
    unless SpojParser.new(html).problem_exists?
      return { errors: ["No such problem: #{params['problem']}"] }.to_json
    end
  end

  private

  def rank_html(problem, lang)
    open("http://spoj.pl/ranks/#{problem}/lang=#{lang}")
  end
end
