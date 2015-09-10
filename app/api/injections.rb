module Injections
  class API < Grape::API
    version 'v1', using: :header
    format :json
    prefix :api
  end
end
