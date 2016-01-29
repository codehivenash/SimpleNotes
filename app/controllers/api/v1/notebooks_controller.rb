class Api::V1::NotebooksController < ApplicationController
	
	before_action :set_notebook, only: [:show, :update, :destroy]
	respond_to :json
	
	def index
		if @notebooks = Notebook.all
		render json: @notebooks, status: 200
		else
			render json: @notebooks.errors, status: unprocess
		end
	end

	def show
		render json:  @notebook
	end

	def create
		@notebook = Notebook.new(notebook_params)
		@notebook.save
		render json: @notebook
	end

	def update
		#success
		if @notebook.update(notebook_params)
			render json: "Notebook named #{@notebook.name} - #{@notebook.id} has been updated", status: 200, location: @notebook 
		else
			render json: @notebook.errors, status: :unprocessable_entity
		end
	end

	def destroy
		if Notebook.destroy(params[:id])
			render json: "Notebook named #{@notebook.name} has been deleted", status: 200
		else
			render json: @notebook.errors, status: unprocessable_entity
		end

		
	end

	def purge
		
	end

	def archive
		
	end




	private
    # Use callbacks to share common setup or constraints between actions.
    def set_notebook
      @notebook = Notebook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notebook_params
      params.require(:notebook).permit( :name, :description, :tags, :owner, :status, :img)
    end

end
