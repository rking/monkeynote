class CrudController < ApplicationController
  cattr_accessor :concrete_class

  def concrete_class; self.class.concrete_class end
  def concrete_underscore; concrete_class.to_s.underscore end
  def concrete_symbol; concrete_underscore.to_sym end

  def after_destroy_destination; index_url end
  def index_url; send concrete_underscore.pluralize + '_url' end

  def new
    @obj = concrete_class.new
  end

  def show
    @obj = concrete_class.find params[:id]
    respond_to do |format|
      format.html
      format.json { render json: @obj }
    end
  end

  def index
    @objs = concrete_class.all
    respond_to do |format|
      format.html
      format.json { render json: @leaves }
    end
  end

  def edit
    @obj = concrete_class.find params[:id]
  end

  def create
    @obj = concrete_class.new params[concrete_symbol]
    respond_to do |format|
      if @obj.save
        format.html {
          redirect_to @obj,
            notice: "#{concrete_class} was successfully created." }
        format.json { render json: @obj, status: :created, location: @obj }
      else
        format.html { render action: 'new' }
        format.json { render json: @obj.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @obj = concrete_class.find params[:id]
    respond_to do |format|
      if @obj.update_attributes params[concrete_symbol]
        format.html {
          redirect_to @obj,
            notice: "#{concrete_class} was successfully updated."
        }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @obj.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @obj = concrete_class.find params[:id]
    @obj.destroy
    respond_to do |format|
      format.html { redirect_to after_destroy_destination }
      format.json { head :no_content }
    end
  end
end
