class Api::ApiController < ActionController::Base
	#API authentication and filters
protect_from_forgery with: :null_session
end
