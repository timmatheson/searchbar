class SearchController < ApplicationController
  def query
    @results = Search.query(params[:q])
  end
end
