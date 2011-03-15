class MemorySearchController < ApplicationController
  respond_to :json

  def new
    result = Search.perform(params[:search_mem_text], params[:search_category])
  	render :json => {:search_result => result, :search_mem_text => params[:search_mem_text], :search_category => params[:search_category]}
  end

end