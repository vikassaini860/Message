class SearchController < ApplicationController

	def search
		if params[:q].nil?
    @results = []
  else
    @results = Content.search params[:q]
  end
	end

end
