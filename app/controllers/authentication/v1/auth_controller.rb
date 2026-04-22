module Authentication
  module V1
    class AuthController < ApplicationController
        before_action :authenticate_user!
        def index
          render json: { status: "ok prueba de controller anidado con usuario autenticado" }
        end

        def logout
          sign_out(current_user)
          redirect_to root_path, notice: "Sesión cerrada"
        end
    end
  end
end
