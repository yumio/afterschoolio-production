class OrgsController < ApplicationController
  def index
    @orgs=Org.all
  end

  def show
  	@org = Org.find(params[:id])
  	@reviews = @org.reviews
  end 


end
