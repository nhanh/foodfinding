class FooddrinksController < ApplicationController
  # GET /fooddrinks
  # GET /fooddrinks.json
  def index
    @fooddrinks = Fooddrink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fooddrinks }
    end
  end

  # GET /fooddrinks/1
  # GET /fooddrinks/1.json
  def show
    @fooddrink = Fooddrink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fooddrink }
    end
  end

  # GET /fooddrinks/new
  # GET /fooddrinks/new.json
  def new
    @fooddrink = Fooddrink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fooddrink }
    end
  end

  # GET /fooddrinks/1/edit
  def edit
    @fooddrink = Fooddrink.find(params[:id])
  end

  # POST /fooddrinks
  # POST /fooddrinks.json
  def create
    @fooddrink = Fooddrink.new(params[:fooddrink])

    respond_to do |format|
      if @fooddrink.save
        format.html { redirect_to @fooddrink, notice: 'Fooddrink was successfully created.' }
        format.json { render json: @fooddrink, status: :created, location: @fooddrink }
      else
        format.html { render action: "new" }
        format.json { render json: @fooddrink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fooddrinks/1
  # PUT /fooddrinks/1.json
  def update
    @fooddrink = Fooddrink.find(params[:id])

    respond_to do |format|
      if @fooddrink.update_attributes(params[:fooddrink])
        format.html { redirect_to @fooddrink, notice: 'Fooddrink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fooddrink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fooddrinks/1
  # DELETE /fooddrinks/1.json
  def destroy
    @fooddrink = Fooddrink.find(params[:id])
    @fooddrink.destroy

    respond_to do |format|
      format.html { redirect_to fooddrinks_url }
      format.json { head :no_content }
    end
  end
end
