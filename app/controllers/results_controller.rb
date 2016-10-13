class ResultsController < ApplicationController


	def search
		if params[:q].nil? || params[:q]==''
        @results=[]
       else
       @results = Content.search params[:q]
       if @results.count==0
       	   @text='No Results'
       	else
       		@text='Your Results Are'
       end
        end
	end



end
