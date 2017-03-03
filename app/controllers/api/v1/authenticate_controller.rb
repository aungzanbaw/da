module Api
  module V1
    class AuthenticateController < ApplicationController
      before_action :authenticate, except: [:login]
      protect_from_forgery with: :null_session

      def login
        customer = Customer.find_by(phone: params[:phone], password: params[:password])
        if customer.nil?
          render json: {status: "Bad credentials"}, status: 401
        else
          render_unauthorized if customer.auth_token.nil?
          render json: {status: "Authorized", token: customer.auth_token}, status: 200
        end
      end

      def orders
        render json: {status: "true"}, status: 200
      end

      def order
        
      end

      protected
        def authenticate
          authenticate_token || render_unauthorized
        end

        def authenticate_token
          authenticate_with_http_token do |token, options|
            Customer.find_by(auth_token: token)
          end
        end

        def render_unauthorized
          self.headers['WWW-Authenticate'] = 'Token realm="Application"'
          render json: 'Bad credentials', status: 401
        end
    end
  end
end
