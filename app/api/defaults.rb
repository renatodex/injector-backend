module Defaults
  extend ActiveSupport::Concern

  included do
    before do
      Behavior::Tokenable.validate(params[:token])
    end

    rescue_from ArgumentError do |e|
      error_response({:message => "could not found required params"})
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      error_response({:message => e.message})
    end

    rescue_from ActiveRecord::RecordNotFound do |e|
      error_response({:message => "resource not found"})
    end

    rescue_from ::AppExceptions::InvalidToken do |e|
      error_response({:message => "invalid token"})
    end

    rescue_from ::AppExceptions::Unauthorized do |e|
      error_response({:message => "you dont have permission to alter this resource"})
    end

    rescue_from ::AppExceptions::ResourceNotFound do |e|
      error_response({:message => "the resource was not found"})
    end

    helpers do
      def current_account
        Account.find_by_token params[:token]
      end

      def token
        params[:token]
      end

      def data
        params[:data]
      end

      def id
        params[:id]
      end
    end
  end
end
