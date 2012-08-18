
class CatalogController < ApplicationController
  def index

    @catalog = Catalog.all

  end

  def create
    @catalog = Catalog.new(params[:catalog])

        respond_to do |format|
          if @catalog.save
            format.html { redirect_to action: "index" , notice: 'Cart was successfully created.' }


          end
        end

  end

  def new
    @catalog = Catalog.new
  end
end
