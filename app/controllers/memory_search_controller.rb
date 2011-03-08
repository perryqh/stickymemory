class MemorySearchController < ApplicationController
  respond_to :json

  def new
    result = Search.perform(params[:search_text])
  	render :json => {:search_result => result}
  end

end