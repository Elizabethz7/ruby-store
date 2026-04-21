module Authentication
  module V1
    class AuthController < ApplicationController
        before_action :authenticate_user!
        def index
            render json: { status: "ok prueba de controller anidado" }
        end
    end
  end
end
