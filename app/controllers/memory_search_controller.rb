class MemorySearchController < ApplicationController
  respond_to :json

  def new
    result = Search.perform(params[:search_mem_text], params[:search_category])
    wt = WordTokenizer.new(result[:text])
    text = wt.decorated_full_text
  	render :json => {:search_result => {:text => text, :header => result[:header]}, :search_mem_text => params[:search_mem_text], :search_category => params[:search_category]}
  end

end