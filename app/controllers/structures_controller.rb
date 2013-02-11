class StructuresController < ApplicationController

  before_filter  :authenticate_user!

	def new
		@structure = Structure.new
	end

	def create
		@structure = current_user.structures.new(params[:structure])
		if @structure.save then
			redirect_to	structure_path(@structure), :notice => "Structure created successfully..."
		else
			render :action => "new"
		end
	end

	def show
		@structure = Structure.where(:id => params[:id]).first
		if (! @structure) then
			redirect_to	:back, :notice => "Structure does not exist..."
		end
	end

	def index
		@structures = current_user.structures.all
	end

	def edit
		@structure = current_user.structures.where(:id => params[:id]).first
		if (! @structure) then
			redirect_to	:back, :notice => "Structure does not exist..."
		end	
	end

  def update
  	@structure = current_user.structures.where(:id => params[:id]).first
  	if (@structure.update_attributes(params[:structure]))
  	redirect_to	structure_path(@structure), :notice => "Structure updated successfully..."
		else
			render :action => "new"
    end
  end

  def destroy
  	@structure = current_user.structures.where(:id => params[:id]).first
  	if (@structure.destroy)
  	redirect_to	structures_path, :notice => "Structure deleted successfully..."
		else
			redirect_to	:back, :notice => "Not able to delete structure..."
    end
  end

end
