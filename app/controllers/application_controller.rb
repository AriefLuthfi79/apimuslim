class ApplicationController < ActionController::API
  include TokenAuthenticatable
  attr_reader :token_command

  rescue_from ActiveRecord::RecordNotFound, with: -> { render json: { error: 'Not Found' }, status: :not_found }
end
