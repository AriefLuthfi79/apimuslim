module Api::V1
  class AuthsController < ApplicationController

    def create
      @token_command = AuthenticateUserCommand.call(auth_params)

      if token_command.success?
        render json: { token: token_command.result }
      else
        render json: { error: @token_command.errors }, status: :unauthorized
      end
    end

    private

    def auth_params
      params.permit(:email, :password)
    end

    def decode_token
      JwtService.decode(token_command.result)
    end
  end
end
