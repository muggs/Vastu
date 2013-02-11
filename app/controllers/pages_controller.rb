class PagesController < ApplicationController

  before_filter :authenticate_user!

	def index
		@structures = current_user.structures.all
	end
end
