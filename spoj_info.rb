require 'sinatra/base'
require 'json'
require 'open-uri'

require_relative 'lib/spoj_parser'

class SpojInfoApp < Sinatra::Application

  get '/' do
    erb :index
  end

  get '/problem/:problem/lang/:lang' do
    content_type :json

    html = rank_html(params['problem'], params['lang'])
    parser = SpojParser.new(html)

    unless parser.problem_exists?
      return { errors: ["No such problem: #{params['problem']}"] }.to_json
    end

    if parser.problem_solved?
      return { message: 'Solved!' }.to_json
    end

    { message: 'Not Solved!' }.to_json
  end

  get '/languages' do
    html = list_of_problems_html
    { languages: SpojParser.new(html).languages }.to_json
  end

  private

  def list_of_problems_html
    open('http://www.spoj.com/problems/classical/')
  end

  def rank_html(problem, lang)
    open(URI.escape("http://www.spoj.pl/ranks/#{problem}/lang=#{lang}"))
  end
end
