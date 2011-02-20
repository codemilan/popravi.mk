class Admin::CountriesController < Admin::BaseController

  # Inherited Resources
  inherit_resources

  # Respond type
  respond_to :html

  def index
    @countries = Country.paginate :all, :order => "name ASC",
                                  :per_page => 10, :page => params[:page]
  end

  def create
    create! do |success, failure|
      flash[:notice] = "Country was successfully created"
      success.html { redirect_to admin_countries_url }
    end
  end

  def update
    update! do |success, failure|
      flash[:notice] = "Country was successfully updated"
      success.html { redirect_to admin_countries_url }
    end
  end

  def destroy
    destroy! do |format|
      format.html { redirect_to admin_countries_url }
    end
  end
end
