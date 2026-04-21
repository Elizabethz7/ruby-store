module Authentication
  module V1
    class AuthController < ApplicationController
        before_action :authenticate_user!
        def index
            render json: { status: "ok prueba de controller anidado con usuario autenticado" }
        end
    end
  end
end
