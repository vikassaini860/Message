class ContentsController < ApplicationController
  def new
  	@msg=Content.new
  end

  def index
  	@msgs=Content.all
  end

  def create
   @msg=Content.new(msg_params)
   if !@msg.save
   	render 'new'
   end
  end

  def delete
  	@msg=Content.find(params[:id])
  	@msg.destroy()
  	redirect_to '/contents'
  end
   
def update
  @msg=Content.find(params[:id])
  if @msg.update(update_params)
    redirect_to controller: 'contents', action: 'show', id: @msg
  else
    render 'edit'
  end
end
    
    def edit
      @msg=Content.find(params[:id])
    end

  def show
  	@result=Content.find(params[:id])
  end
  private 

  def msg_params
  	params.require(:content).permit(:data,:owner)
  end

  def update_params
  	params.require(:content).permit(:data,:owner)
  end
end
