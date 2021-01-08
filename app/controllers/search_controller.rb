class SearchController < ApplicationController
  def index
    author = params[:author]

    conn = Faraday.new(url: "https://poetrydb.org/")

    response = conn.get("author,poemcount/Emily;10")

    @poems = JSON.parse(response.body, symbolize_names: true)
  end
end
