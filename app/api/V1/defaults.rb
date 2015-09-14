module V1
  module Defaults
    extend ActiveSupport::Concern

    included do
      before do
        Behavior::Tokenable.validate(params[:token])
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
    end
  end
end
