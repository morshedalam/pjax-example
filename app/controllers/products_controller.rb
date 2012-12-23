class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    load_index()
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])
    render_after_save('new')
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])
    @product.attributes = params[:product]
    render_after_save('edit')
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    params.delete(:id)
    load_index()
  end

  private
  def render_after_save(action_on_error)
    if @product.save
      load_index()
    else
      render action: action_on_error
    end
  end

  def load_index
    @products = Product.all
    render :index
  end
end
