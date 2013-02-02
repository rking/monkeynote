class LeavesController < ApplicationController

  def index
    'charliesome'.to_i/0
    @leaves = Leaf.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leaves }
    end
  end

  def show
    @leaf = Leaf.find params[:id]
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leaf }
    end
  end

  def new
    @leaf = Leaf.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leaf }
    end
  end

  def edit
    @leaf = Leaf.find params[:id]
  end

  def create
    @leaf = Leaf.new params[:leaf]
    respond_to do |format|
      if @leaf.save
        format.html { redirect_to @leaf, notice: 'Leaf was successfully created.' }
        format.json { render json: @leaf, status: :created, location: @leaf }
      else
        format.html { render action: "new" }
        format.json { render json: @leaf.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @leaf = Leaf.find params[:id]
    respond_to do |format|
      if @leaf.update_attributes params[:leaf]
        format.html { redirect_to @leaf, notice: 'Leaf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @leaf.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @leaf = Leaf.find params[:id]
    @leaf.destroy
    respond_to do |format|
      format.html { redirect_to leaves_url }
      format.json { head :no_content }
    end
  end
end
