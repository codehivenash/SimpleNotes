class Api::V1::NotebooksController < ApplicationController
	before_action :set_notebook, only: [:index,:show]

	respond_to :json
	
	def index
		@notebooks = Notebook.all
		respond_with @notebooks
	end

	def show
		respond_with @notebook
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_notebook
      @notebook = Notebook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notebook_params
      params.require(:notebook).permit(:name, :description, :tags, :owner, :status, :img)
    end

end
