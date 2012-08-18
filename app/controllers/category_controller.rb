
class CategoryController < ApplicationController
  def index
  end

  def create

    @post_data = params[:category]


    @catalog = Catalog.find(@post_data['table'])
    @post_data.delete("table")
    @category = @catalog.categories.new(@post_data)
    respond_to do |format|
      if @category.save
        format.html { redirect_to action: "index" , notice: 'Cart was successfully created.' }
      end
    end


  end

  def new
   @catalog = params[:catalog_id]
   @category = Category.new

  end
end
