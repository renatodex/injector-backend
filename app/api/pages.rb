module Pages
  class API < Grape::API
    version 'v1'
    format :json
    prefix :api
  end
end
