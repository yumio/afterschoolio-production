class OrgsController < ApplicationController
  def index
    @orgs=Org.all
  end

  def show
  	@org = Org.find(params[:id])
  	@reviews = @org.reviews
  end 

  def new
  	@org = Org.new
  end

  def create
  	@org = Org.new(org_params)
  	if @org.save
  		redirect_to '/orgs'
  	else
  		render 'new'
  	end
  end

  def edit
    @org = Org.find(params[:id])
  end

  def update
    @org = Org.find(params[:id])
    if @org.update_attributes(org_params)
      redirect_to @org
    else
      render 'edit'
    end 
  end



private
	def org_params
		params.require(:org).permit(:org_name, :org_street, :org_city, :org_state, :org_zip, :org_phone, :org_url, :org_email, :org_description, :org_imageurl, :org_category, :org_subcategory, :org_tag, :org_kidgrade_start, :org_kidgrade_end, :org_featured)
	end


end
